#! /usr/bin/env ruby

require 'rss'
require 'nokogiri'
require 'json'

filename = ARGV[0]
output_folder = ARGV[1]

unless filename && output_folder
  puts "required ARGS missing"
  exit 1
end
unless Dir.exists?(output_folder)
  puts "create folder first"
  exit 1
end

File.open(filename) do |file|
  drafts = []
  items = Nokogiri::XML(file).xpath("//xmlns:entry")
  items.each do |item|
    next unless item.at("[name()='app:draft']")
    puts item.at("title")
    drafts << item.at("id").text
  end
  file.rewind

  feed = RSS::Parser.parse(file)

  feed.entries.each do |entry|
    next if drafts.include? entry.id.content
    next unless entry.categories.map(&:to_s).any?{|category| category.include?("post")}

    frontmatter = {
      :raw => entry.to_s,
      :slug => entry.links.select {|link| link.rel == "alternate"}.first.href.split("/").last.gsub(".html",""),
      :title => entry.title.content,
      :author => entry.author.name.content,
      :date => entry.published.content,
    }
    md_filename = frontmatter[:slug] + ".md"
    content = entry.content.content

    File.open(File.join(output_folder, md_filename), 'w') do |md_file|
      md_file << JSON.pretty_generate(frontmatter)
      md_file << "\n" * 2
      md_file << content
    end

    # Links are useful for getting comments, etc
    #puts entry.links.select {|link| link.rel == "replies" && link.type == "text/html" }
  end
end
