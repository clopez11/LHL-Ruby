require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open('post.html'))

puts page.search('.subtext > span:first-child').map { |span| span.inner_text}
puts page.search('.subtext > a:nth-child(3)').map {|link| link['href'] }
puts page.search('.title > a:first-child').map { |link| link.inner_text}
puts page.search('.title > a:first-child').map { |link| link['href']}
puts page.search('.comment > font:first-child').map { |font| font.inner_text}