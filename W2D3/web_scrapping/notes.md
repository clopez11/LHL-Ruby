<!-- nokogiri gem -->
HTML, XML, SAX and reader parser. Can search documents via XPath or CSS3 Selectors


require 'nokogiri' in pry to check you have the gem

<!-- gem install nokogiri -->

<!-- Copies the html file to post.html -->
curl -k https://news.ycombinator.com/item?id=7663775 > post.html

<!-- opens Doc file post.html in pry or irb -->
doc = Nokogiri::HTML(File.open('post.html'))
