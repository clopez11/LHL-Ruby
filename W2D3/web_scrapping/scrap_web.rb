require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'
# require 'rest-client'

# ---- Opening a page with nokogiri and open uri

# page = Nokogiri::HTML(open('post.html'))
# puts page.class # => Nokogiri::HTML::Document

# --- Open uri if the webpage is live

# page = Nokogiri::HTML(open('https://en.wikipedia.org/'))
# puts page.class # => Nokogiri::HTML::Document

# --- Using rest client

# page = Nokogiri::HTML(RestClient.get("http://en.wikipedia.org/"))   
# puts page.class # => Nokogiri::HTML::Document

# PAGE_URL = "http://ruby.bastardsbook.com/files/hello-webpage.html"

# page = Nokogiri::HTML(open('book.html'))
# puts page.css('title')
# puts page.css('li')
# puts page.css('li')[0].text
# puts page.css('li')[1]['href'] # did not work
# puts page.css("li[data-category='news']") # did not work
# puts page.css('div#funstuff')[0] 
# puts page.css('div#reference a') # did not work


# ---- set URL to point to where the page exists
# page = Nokogiri::HTML(open('book.html'))
# links = page.css("a")
# puts links.length   # => 6
# puts links[0].text   # => Click here
# puts links[0]["href"] # => http://www.google.com

# ---- using select for collections

# page = Nokogiri::HTML(open('book.html'))
# news_links = page.css("a").select{|link| link['data-category'] == "news"}
# news_links.each{|link| puts link['href'] }

#=>   http://reddit.com
#=>   http://www.nytimes.com
         
# puts news_links.class   #=>   Array 

# ---- select elements by attributes

# page = Nokogiri::HTML(open('book.html'))
# news_links = page.css("a[data-category=news]")
# news_links.each{|link| puts link['href']}
# #=>   http://reddit.com
# #=>   http://www.nytimes.com

# puts news_links.class   #=>   Nokogiri::XML::NodeSet 

# ---- The following code calls css twice – once to gather the anchor links and then to gather any bolded elements (which use the <strong> tag) that are within those links:
# page.css('p').css("a[data-category=news]").css("strong")

# ---- Exercise 1
# Referring back to our sample HTML, write a selector that chooses only the anchor tags in the div that has the id of "references". Print out the text within the anchor tag followed by its URL.

# page = Nokogiri::HTML(open('scrape.html'))
# reference = page.css('div#references a')
# reference.each { |link| puts "#{link.text}, #{link['href']}" }


# ---- Exercise 2
#mw-content-text > table.infobox > tbody > tr:nth-child(3) > th > a
# div#content div#bodyContent table.infobox tr th

# page = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/HTML'))
# wiki = page.css('div#content div#bodyContent table.infobox tr th').each do |category|
#   puts category.text
# end

# ---- Testing 
# selector path = 'table#hnmain tr#7663775.athing td.title a.storylink'

# title = Array.new
# page = Nokogiri::HTML(open('https://news.ycombinator.com/item?id=7663775'))
# title << page.css('table#hnmain tr#7663775.athing td.title a.storylink').text
# puts title

# page = Nokogiri::HTML(open('https://news.ycombinator.com/item?id=7663775'))
# title = page.css('td').select { |title| title['tr#7663775.athing']}
# title.each { |link| puts link['storylink']}

# puts title

# array = Array.new
# page = Nokogiri::HTML(open('https://news.ycombinator.com/item?id=7663775'))
# news = page.css('title')
# news.map do |title|
#   array << title.text
# end

# puts array
# puts array.class

page = Nokogiri::HTML(open('https://news.ycombinator.com/item?id=7663775'))

# array = []
# page = Nokogiri::HTML(open('https://news.ycombinator.com/item?id=7663775'))
# link = page.search('title').map do |title|
#   array << title.text

#   puts array
#   puts array.class
# end

# page.search('span#score_7663775.score').map { |points| points.text }
page.css('span#score_7663775.score').text
puts page

# //*[@id="score_7663775"]
# <span class="score" id="score_7663775">160 points</span>
# 'span#score_7663775.score'






