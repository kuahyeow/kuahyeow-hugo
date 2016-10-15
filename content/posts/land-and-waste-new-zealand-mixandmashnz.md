{
  "raw": "<entry>\n  <author>\n    <name>YT Kuah</name>\n    <uri>https://www.blogger.com/profile/12922664246915351758</uri>\n    <email>noreply@blogger.com</email>\n  </author>\n  <category term=\"http://schemas.google.com/blogger/2008/kind#post\"\n    scheme=\"http://schemas.google.com/g/2005#kind\"/>\n  <content type=\"html\">&lt;div class=&quot;separator&quot; style=&quot;clear: both; text-align: center;&quot;&gt;&lt;/div&gt;&lt;table align=&quot;center&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; class=&quot;tr-caption-container&quot; style=&quot;margin-left: auto; margin-right: auto; text-align: center;&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;a href=&quot;http://3.bp.blogspot.com/-NOZR1gdsPPA/TnKttEg3sWI/AAAAAAAAAkY/FtJRVnPuRig/s1600/tilemill-map.png&quot; imageanchor=&quot;1&quot; style=&quot;margin-left: auto; margin-right: auto;&quot;&gt;&lt;span style=&quot;font-family: inherit;&quot;&gt;&lt;img border=&quot;0&quot; height=&quot;186&quot; src=&quot;http://3.bp.blogspot.com/-NOZR1gdsPPA/TnKttEg3sWI/AAAAAAAAAkY/FtJRVnPuRig/s320/tilemill-map.png&quot; width=&quot;320&quot; /&gt;&lt;/span&gt;&lt;/a&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td class=&quot;tr-caption&quot;&gt;&lt;span style=&quot;font-family: inherit;&quot;&gt;Land And Waste New Zealand&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;br /&gt;&lt;span style=&quot;font-family: inherit;&quot;&gt;&lt;br /&gt;&lt;br /&gt;Here's a behind the scenes write-up for my Mix and Mash NZ mashup.&lt;br /&gt;&lt;br /&gt;Check it out here :&lt;br /&gt;&lt;br /&gt;&lt;a href=&quot;http://www.landandwaste.co.nz/&quot;&gt;http://www.landandwaste.co.nz&lt;/a&gt;&lt;br /&gt;&lt;br /&gt;This mashup attempts to show land and waste data as it changes, and hopefully illuminates any improvements of our environmental impact as well as regressions.&lt;br /&gt;&lt;br /&gt;&lt;b&gt;The journey&lt;/b&gt;&lt;br /&gt;&lt;br /&gt;It started out as an idea to gather all kerb recycling data from all 75 odd local councils in New Zealand. That meant scraping the data off the websites of various local and unitary councils. I quickly backed away once I found that lots of councils forbade any re-use, and the data that's available is too inconsistent for me to compare and visualize.&lt;br /&gt;&lt;br /&gt;Therefore much time and effort was spent looking for suitable data. I was interested in mainly environmental type data, which was to found mainly on the Ministry for the Environment website. I was also interested in regional level data, instead of a single national figure, which wasn't that interesting .&lt;br /&gt;&lt;br /&gt;In the end, I found suitable data for land use, rates, farm animal counts, population, and waste. Given more time, I would have hunted for transport data, which would then completely encompass all the major responsibilities of a regional council.&lt;br /&gt;&lt;br /&gt;&lt;b&gt;Putting it together&lt;/b&gt;&lt;br /&gt;This mashup was made with Ruby on Rails, TileMill (&lt;a href=&quot;http://mapbox.com/tilemill/&quot;&gt;http://mapbox.com/tilemill/&lt;/a&gt;), d3 (&lt;a href=&quot;http://mbostock.github.com/d3/&quot;&gt;http://mbostock.github.com/d3/&lt;/a&gt;) and polymaps (&lt;a href=&quot;http://polymaps.org/&quot;&gt;http://polymaps.org/&lt;/a&gt;)&lt;br /&gt;&lt;br /&gt;The excellent Koordinates.com put up a CC licensed shapefile of various land types in New Zealand. Instead of reaching for the de-facto choice of Google maps, this time I chose to try my hand at creating custom map tiles from that data. This had the advantage of being able to design the map to be far friendlier for statistical visualizations like cartograms, etc. &lt;br /&gt;&lt;br /&gt;TileMill is simply a brilliant piece of software, which allows once to pull data from various sources and create beautiful maps, using any style you want. In addition, there are options for mouseover and click events.&lt;br /&gt;&lt;br /&gt;There is an export function which will allow you to host the map tiles online ala Google Maps. I chose to utilise the hosted service at TileStream (&lt;a href=&quot;http://mapbox.com/#/tilestream&quot;&gt;http://mapbox.com/#/tilestream&lt;/a&gt;). It is completely possible to self-host as well, as the hosting code has been made available at&lt;a href=&quot;https://github.com/mapbox/tilestream&quot;&gt;https://github.com/mapbox/tilestream&lt;/a&gt;.&lt;br /&gt;&lt;br /&gt;The final map I produced using TileMill can be seen at &lt;a href=&quot;http://www.landandwaste.co.nz/land&quot;&gt;http://www.landandwaste.co.nz/land&lt;/a&gt;.&lt;br /&gt;&lt;br /&gt;Importing and processing the tabular data seen on the mashup was just a matter of using a combination of Google Docs, Google Refine, and csv files. Choosing a suitable graphical representation for each set of data was slightly tougher. I used a combination of sparklines, quantile maps, and just plain text. This was done using d3 and polymaps. &lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;table align=&quot;center&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; class=&quot;tr-caption-container&quot; style=&quot;margin-left: auto; margin-right: auto; text-align: center;&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td style=&quot;text-align: center;&quot;&gt;&lt;a href=&quot;http://4.bp.blogspot.com/-MnQn0PIOVMM/TnKttOStGrI/AAAAAAAAAkc/CwZkK1vs-hY/s1600/Screen+shot+2011-09-16+at+1.44.48+PM.png&quot; imageanchor=&quot;1&quot; style=&quot;margin-left: auto; margin-right: auto;&quot;&gt;&lt;img border=&quot;0&quot; height=&quot;193&quot; src=&quot;http://4.bp.blogspot.com/-MnQn0PIOVMM/TnKttOStGrI/AAAAAAAAAkc/CwZkK1vs-hY/s320/Screen+shot+2011-09-16+at+1.44.48+PM.png&quot; width=&quot;320&quot; /&gt;&lt;/a&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td class=&quot;tr-caption&quot; style=&quot;text-align: center;&quot;&gt;Land use area visualization (example here for Bay of Plenty)&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;div&gt;&lt;span style=&quot;font-family: inherit;&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;/div&gt;&lt;table align=&quot;center&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; class=&quot;tr-caption-container&quot; style=&quot;margin-left: auto; margin-right: auto; text-align: center;&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td style=&quot;text-align: center;&quot;&gt;&lt;a href=&quot;http://2.bp.blogspot.com/-Qvkm2ZT6ap8/TnKttfInuiI/AAAAAAAAAkg/LG-0rtqBknk/s1600/Screen+shot+2011-09-16+at+1.43.05+PM.png&quot; imageanchor=&quot;1&quot; style=&quot;margin-left: auto; margin-right: auto;&quot;&gt;&lt;img border=&quot;0&quot; height=&quot;262&quot; src=&quot;http://2.bp.blogspot.com/-Qvkm2ZT6ap8/TnKttfInuiI/AAAAAAAAAkg/LG-0rtqBknk/s320/Screen+shot+2011-09-16+at+1.43.05+PM.png&quot; width=&quot;320&quot; /&gt;&lt;/a&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td class=&quot;tr-caption&quot; style=&quot;text-align: center;&quot;&gt;Waste visualization for each region in New Zealand&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;div&gt;&lt;span style=&quot;font-family: inherit;&quot;&gt;&lt;br /&gt;&lt;br /&gt;&lt;b&gt;Where to from here&lt;/b&gt;&lt;br /&gt;It was a huge learning experience. I learnt that creating something useful is very possible, and takes less time than I expected. Creating something polished requires far more time. I will definitely find a designer or improve my own design skills next time.&lt;/span&gt;&lt;/div&gt;</content>\n  <id>tag:blogger.com,1999:blog-12015963.post-6816582389625072678</id>\n  <link href=\"http://blog.kuahyeow.com/feeds/6816582389625072678/comments/default\"\n    rel=\"replies\"\n    type=\"application/atom+xml\"\n    title=\"Post Comments\"/>\n  <link href=\"https://www.blogger.com/comment.g?blogID=12015963&amp;postID=6816582389625072678\"\n    rel=\"replies\"\n    type=\"text/html\"\n    title=\"0 Comments\"/>\n  <link href=\"https://www.blogger.com/feeds/12015963/posts/default/6816582389625072678\"\n    rel=\"edit\"\n    type=\"application/atom+xml\"/>\n  <link href=\"https://www.blogger.com/feeds/12015963/posts/default/6816582389625072678\"\n    rel=\"self\"\n    type=\"application/atom+xml\"/>\n  <link href=\"http://blog.kuahyeow.com/2011/09/land-and-waste-new-zealand-mixandmashnz.html\"\n    rel=\"alternate\"\n    type=\"text/html\"\n    title=\"Land and Waste New Zealand - #mixandmashnz\"/>\n  <published>2011-09-25T13:01:00.0+13:00</published>\n  <title type=\"text\">Land and Waste New Zealand - #mixandmashnz</title>\n  <updated>2011-09-25T13:07:53.349+13:00</updated>\n</entry>",
  "slug": "land-and-waste-new-zealand-mixandmashnz",
  "title": "Land and Waste New Zealand - #mixandmashnz",
  "author": "YT Kuah",
  "date": "2011-09-25T13:01:00.0+13:00",
  "tags": [

  ]
}

<div class="separator" style="clear: both; text-align: center;"></div><table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td><a href="http://3.bp.blogspot.com/-NOZR1gdsPPA/TnKttEg3sWI/AAAAAAAAAkY/FtJRVnPuRig/s1600/tilemill-map.png" imageanchor="1" style="margin-left: auto; margin-right: auto;"><span style="font-family: inherit;"><img border="0" height="186" src="http://3.bp.blogspot.com/-NOZR1gdsPPA/TnKttEg3sWI/AAAAAAAAAkY/FtJRVnPuRig/s320/tilemill-map.png" width="320" /></span></a></td></tr><tr><td class="tr-caption"><span style="font-family: inherit;">Land And Waste New Zealand</span></td></tr></tbody></table><br /><span style="font-family: inherit;"><br /><br />Here's a behind the scenes write-up for my Mix and Mash NZ mashup.<br /><br />Check it out here :<br /><br /><a href="http://www.landandwaste.co.nz/">http://www.landandwaste.co.nz</a><br /><br />This mashup attempts to show land and waste data as it changes, and hopefully illuminates any improvements of our environmental impact as well as regressions.<br /><br /><b>The journey</b><br /><br />It started out as an idea to gather all kerb recycling data from all 75 odd local councils in New Zealand. That meant scraping the data off the websites of various local and unitary councils. I quickly backed away once I found that lots of councils forbade any re-use, and the data that's available is too inconsistent for me to compare and visualize.<br /><br />Therefore much time and effort was spent looking for suitable data. I was interested in mainly environmental type data, which was to found mainly on the Ministry for the Environment website. I was also interested in regional level data, instead of a single national figure, which wasn't that interesting .<br /><br />In the end, I found suitable data for land use, rates, farm animal counts, population, and waste. Given more time, I would have hunted for transport data, which would then completely encompass all the major responsibilities of a regional council.<br /><br /><b>Putting it together</b><br />This mashup was made with Ruby on Rails, TileMill (<a href="http://mapbox.com/tilemill/">http://mapbox.com/tilemill/</a>), d3 (<a href="http://mbostock.github.com/d3/">http://mbostock.github.com/d3/</a>) and polymaps (<a href="http://polymaps.org/">http://polymaps.org/</a>)<br /><br />The excellent Koordinates.com put up a CC licensed shapefile of various land types in New Zealand. Instead of reaching for the de-facto choice of Google maps, this time I chose to try my hand at creating custom map tiles from that data. This had the advantage of being able to design the map to be far friendlier for statistical visualizations like cartograms, etc. <br /><br />TileMill is simply a brilliant piece of software, which allows once to pull data from various sources and create beautiful maps, using any style you want. In addition, there are options for mouseover and click events.<br /><br />There is an export function which will allow you to host the map tiles online ala Google Maps. I chose to utilise the hosted service at TileStream (<a href="http://mapbox.com/#/tilestream">http://mapbox.com/#/tilestream</a>). It is completely possible to self-host as well, as the hosting code has been made available at<a href="https://github.com/mapbox/tilestream">https://github.com/mapbox/tilestream</a>.<br /><br />The final map I produced using TileMill can be seen at <a href="http://www.landandwaste.co.nz/land">http://www.landandwaste.co.nz/land</a>.<br /><br />Importing and processing the tabular data seen on the mashup was just a matter of using a combination of Google Docs, Google Refine, and csv files. Choosing a suitable graphical representation for each set of data was slightly tougher. I used a combination of sparklines, quantile maps, and just plain text. This was done using d3 and polymaps. <br /><br /></span><table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="http://4.bp.blogspot.com/-MnQn0PIOVMM/TnKttOStGrI/AAAAAAAAAkc/CwZkK1vs-hY/s1600/Screen+shot+2011-09-16+at+1.44.48+PM.png" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" height="193" src="http://4.bp.blogspot.com/-MnQn0PIOVMM/TnKttOStGrI/AAAAAAAAAkc/CwZkK1vs-hY/s320/Screen+shot+2011-09-16+at+1.44.48+PM.png" width="320" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">Land use area visualization (example here for Bay of Plenty)</td></tr></tbody></table><div><span style="font-family: inherit;"><br /></span></div><table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody><tr><td style="text-align: center;"><a href="http://2.bp.blogspot.com/-Qvkm2ZT6ap8/TnKttfInuiI/AAAAAAAAAkg/LG-0rtqBknk/s1600/Screen+shot+2011-09-16+at+1.43.05+PM.png" imageanchor="1" style="margin-left: auto; margin-right: auto;"><img border="0" height="262" src="http://2.bp.blogspot.com/-Qvkm2ZT6ap8/TnKttfInuiI/AAAAAAAAAkg/LG-0rtqBknk/s320/Screen+shot+2011-09-16+at+1.43.05+PM.png" width="320" /></a></td></tr><tr><td class="tr-caption" style="text-align: center;">Waste visualization for each region in New Zealand</td></tr></tbody></table><div><span style="font-family: inherit;"><br /><br /><b>Where to from here</b><br />It was a huge learning experience. I learnt that creating something useful is very possible, and takes less time than I expected. Creating something polished requires far more time. I will definitely find a designer or improve my own design skills next time.</span></div>