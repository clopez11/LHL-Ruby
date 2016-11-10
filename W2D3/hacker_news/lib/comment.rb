class Comment

  attr_reader :text, :username, :post_id

  def initialize(text, username, post_id)
    @text = text
    @username = username
    @post_id = post_id
  end

end