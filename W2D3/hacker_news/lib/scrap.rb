require 'open-uri'
# require 'nokogiri'

class Scrap

  attr_reader :url

  def initialize(url)
    @url = url
    @page = Nokogiri::HTML(open(@url))
  end

  def get_title
    array = []
    @page.search('title').map do |title|
      array << title.text
    end
  end

  def get_points
    page.css('span#score_7663775.score').text
  end

  def get_item_id
    link = @doc.search('.subtext > a:nth-child(3)').map {|link| link['href'] }
    link.to_s.scan(/\d+/).join
  end

end