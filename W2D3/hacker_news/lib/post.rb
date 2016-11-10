class Post

  attr_reader :title, :url, :points, :item_id

  def initialize(title, url, points, item_id)
    @title = title
    @url = url
    @points = points
    @item_id = item_id
  end

  def comments
    @comments.each do |comment|
      puts "Username: #{comment.user}"
      puts "Comment: #{comment.text}"
    end
  end

  def add_comment(comment)
    @comments << comment
  end

end