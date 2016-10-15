{
  "raw": "<entry>\n  <author>\n    <name>YT Kuah</name>\n    <uri>https://www.blogger.com/profile/12922664246915351758</uri>\n    <email>noreply@blogger.com</email>\n  </author>\n  <category term=\"batch\"\n    scheme=\"http://www.blogger.com/atom/ns#\"/>\n  <category term=\"http://schemas.google.com/blogger/2008/kind#post\"\n    scheme=\"http://schemas.google.com/g/2005#kind\"/>\n  <category term=\"rails\"\n    scheme=\"http://www.blogger.com/atom/ns#\"/>\n  <category term=\"intent\"\n    scheme=\"http://www.blogger.com/atom/ns#\"/>\n  <category term=\"bug\"\n    scheme=\"http://www.blogger.com/atom/ns#\"/>\n  <category term=\"find_each\"\n    scheme=\"http://www.blogger.com/atom/ns#\"/>\n  <content type=\"html\">&lt;a href=&quot;http://ryandaigle.com/articles/2009/2/23/what-s-new-in-edge-rails-batched-find&quot;&gt; ActiveRecord::Base#find_each&lt;/a&gt; is an awesome idiom for batch processing large sets of data. It combines the neat DSL of ActiveRecord and allows you to operate at the level of the individual item.&lt;br /&gt;&lt;br /&gt;So, imagine my surprise when I debugged my code and discovered that find_each introduces a scope into ActiveRecord calls within the block. Demonstrating by example:&lt;br /&gt;&lt;br /&gt;&lt;div style=&quot;font-family: &amp;quot;Courier New&amp;quot;,Courier,monospace;&quot;&gt;Slam.find_each(:conditions =&amp;gt; {:value =&amp;gt; nil}) do |slam|&lt;/div&gt;&lt;div style=&quot;font-family: &amp;quot;Courier New&amp;quot;,Courier,monospace;&quot;&gt;#....&lt;/div&gt;&lt;div style=&quot;font-family: &amp;quot;Courier New&amp;quot;,Courier,monospace;&quot;&gt;&amp;nbsp; Slam.find_by_key(slam.key)   #Find  related key&lt;/div&gt;&lt;div style=&quot;font-family: &amp;quot;Courier New&amp;quot;,Courier,monospace;&quot;&gt;&amp;nbsp; #However, in effect becomes Slam.find_by_key(:key =&amp;gt; slam.key, :value =&amp;gt; nil)&lt;/div&gt;&lt;div style=&quot;font-family: &amp;quot;Courier New&amp;quot;,Courier,monospace;&quot;&gt;end&lt;/div&gt;&lt;br /&gt;Looking at the SQL in the logs, I expected to see:&lt;br /&gt;&lt;br /&gt;&lt;div style=&quot;font-family: &amp;quot;Courier New&amp;quot;,Courier,monospace;&quot;&gt;select * from slams where key = 'abcde';&lt;/div&gt;&lt;br /&gt;Instead I saw:&lt;br /&gt;&lt;br /&gt;&lt;div style=&quot;font-family: &amp;quot;Courier New&amp;quot;,Courier,monospace;&quot;&gt;select * from slams where key = 'abcde' and value is null;&lt;/div&gt;&lt;br /&gt;&lt;span style=&quot;font-family: inherit;&quot;&gt;It took me fifteen minutes to check and verify there is no code that should be generating that SQL, so the next candidate was find_each. Lo and behold, it was. Turns out find_each is &lt;a href=&quot;https://rails.lighthouseapp.com/projects/8994/tickets/2791-activerecordbasefind_in_batches-puts-a-with_scope-into-the-block-that-is-executed&quot;&gt;using&lt;/a&gt; &lt;a href=&quot;http://davedupre.com/2009/05/20/gotcha-with-find_each-and-find_in_batches/&quot;&gt;with_scope&lt;/a&gt;.&amp;nbsp;&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;Looking around, there are already some bug reports for this behaviour:&lt;br /&gt;&lt;ul&gt;&lt;li&gt;&lt;a href=&quot;https://rails.lighthouseapp.com/projects/8994/tickets/2791-activerecordbasefind_in_batches-puts-a-with_scope-into-the-block-that-is-executed&quot;&gt;https://rails.lighthouseapp.com/projects/8994/tickets/2791-activerecordbasefind_in_batches-puts-a-with_scope-into-the-block-that-is-executed&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=&quot;https://rails.lighthouseapp.com/projects/8994/tickets/2227-batches-conditions-for-each-are-applied-to-each-modelfind-within-the-each-loop&quot;&gt;https://rails.lighthouseapp.com/projects/8994/tickets/2227-batches-conditions-for-each-are-applied-to-each-modelfind-within-the-each-loop&lt;/a&gt;&lt;/li&gt;&lt;/ul&gt;Question: Is this intended or this a bug? I think, given the &quot;side-effect&quot; feel of it, it's a bug&lt;br /&gt;&lt;br /&gt;&lt;b&gt;Update&lt;/b&gt;:&amp;nbsp; I have reviewed one &lt;a href=&quot;https://rails.lighthouseapp.com/projects/8994-ruby-on-rails/tickets/2227-batches-conditions-for-each-are-applied-to-each-modelfind-within-the-each-loop#ticket-2227-5&quot;&gt;promising patch to fix this&lt;/a&gt;. Needs one more person to review and approve this patch!</content>\n  <id>tag:blogger.com,1999:blog-12015963.post-261352529560893827</id>\n  <link href=\"http://blog.kuahyeow.com/feeds/261352529560893827/comments/default\"\n    rel=\"replies\"\n    type=\"application/atom+xml\"\n    title=\"Post Comments\"/>\n  <link href=\"https://www.blogger.com/comment.g?blogID=12015963&amp;postID=261352529560893827\"\n    rel=\"replies\"\n    type=\"text/html\"\n    title=\"0 Comments\"/>\n  <link href=\"https://www.blogger.com/feeds/12015963/posts/default/261352529560893827\"\n    rel=\"edit\"\n    type=\"application/atom+xml\"/>\n  <link href=\"https://www.blogger.com/feeds/12015963/posts/default/261352529560893827\"\n    rel=\"self\"\n    type=\"application/atom+xml\"/>\n  <link href=\"http://blog.kuahyeow.com/2009/09/findeach-bites.html\"\n    rel=\"alternate\"\n    type=\"text/html\"\n    title=\"find_each bites\"/>\n  <published>2009-09-08T23:11:00.0+12:00</published>\n  <title type=\"text\">find_each bites</title>\n  <updated>2009-09-09T00:13:38.741+12:00</updated>\n</entry>",
  "slug": "findeach-bites",
  "title": "find_each bites",
  "author": "YT Kuah",
  "date": "2009-09-08T23:11:00.0+12:00",
  "tags": [
    "batch",
    "rails",
    "intent",
    "bug",
    "find_each"
  ]
}

<a href="http://ryandaigle.com/articles/2009/2/23/what-s-new-in-edge-rails-batched-find"> ActiveRecord::Base#find_each</a> is an awesome idiom for batch processing large sets of data. It combines the neat DSL of ActiveRecord and allows you to operate at the level of the individual item.<br /><br />So, imagine my surprise when I debugged my code and discovered that find_each introduces a scope into ActiveRecord calls within the block. Demonstrating by example:<br /><br /><div style="font-family: &quot;Courier New&quot;,Courier,monospace;">Slam.find_each(:conditions =&gt; {:value =&gt; nil}) do |slam|</div><div style="font-family: &quot;Courier New&quot;,Courier,monospace;">#....</div><div style="font-family: &quot;Courier New&quot;,Courier,monospace;">&nbsp; Slam.find_by_key(slam.key)   #Find  related key</div><div style="font-family: &quot;Courier New&quot;,Courier,monospace;">&nbsp; #However, in effect becomes Slam.find_by_key(:key =&gt; slam.key, :value =&gt; nil)</div><div style="font-family: &quot;Courier New&quot;,Courier,monospace;">end</div><br />Looking at the SQL in the logs, I expected to see:<br /><br /><div style="font-family: &quot;Courier New&quot;,Courier,monospace;">select * from slams where key = 'abcde';</div><br />Instead I saw:<br /><br /><div style="font-family: &quot;Courier New&quot;,Courier,monospace;">select * from slams where key = 'abcde' and value is null;</div><br /><span style="font-family: inherit;">It took me fifteen minutes to check and verify there is no code that should be generating that SQL, so the next candidate was find_each. Lo and behold, it was. Turns out find_each is <a href="https://rails.lighthouseapp.com/projects/8994/tickets/2791-activerecordbasefind_in_batches-puts-a-with_scope-into-the-block-that-is-executed">using</a> <a href="http://davedupre.com/2009/05/20/gotcha-with-find_each-and-find_in_batches/">with_scope</a>.&nbsp;</span><br /><br />Looking around, there are already some bug reports for this behaviour:<br /><ul><li><a href="https://rails.lighthouseapp.com/projects/8994/tickets/2791-activerecordbasefind_in_batches-puts-a-with_scope-into-the-block-that-is-executed">https://rails.lighthouseapp.com/projects/8994/tickets/2791-activerecordbasefind_in_batches-puts-a-with_scope-into-the-block-that-is-executed</a></li><li><a href="https://rails.lighthouseapp.com/projects/8994/tickets/2227-batches-conditions-for-each-are-applied-to-each-modelfind-within-the-each-loop">https://rails.lighthouseapp.com/projects/8994/tickets/2227-batches-conditions-for-each-are-applied-to-each-modelfind-within-the-each-loop</a></li></ul>Question: Is this intended or this a bug? I think, given the "side-effect" feel of it, it's a bug<br /><br /><b>Update</b>:&nbsp; I have reviewed one <a href="https://rails.lighthouseapp.com/projects/8994-ruby-on-rails/tickets/2227-batches-conditions-for-each-are-applied-to-each-modelfind-within-the-each-loop#ticket-2227-5">promising patch to fix this</a>. Needs one more person to review and approve this patch!