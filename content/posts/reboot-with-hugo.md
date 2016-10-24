{
  "title": "Reboot with Hugo",
  "date": "2016-10-24",
  "tags": ["blog", "technology"]
}

Thanks to the magic of static site generators, I've now moved from Blogger to [Hugo](https://gohugo.io).

All static site generators are much for muchness, but Hugo appealed to me with the chance of at least hacking in Go.
The main benefit though would be archive all my writing in `git` - which can now be found at https://github.com/kuahyeow/kuahyeow-blog

The code to generate my blog is kept in a separate [repository](https://github.com/kuahyeow/kuahyeow-hugo). Besides the folders to drive
Hugo, I have included a home-made Blogger to Hugo importer. See https://github.com/kuahyeow/kuahyeow-hugo/blob/master/importedFromBlogger/blogger2markdown.rb
for full gory details. 
