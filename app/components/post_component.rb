class PostComponent < ViewComponent::Base
  attr_reader :post

  def initialize(post:)
    @post = post
  end

  def title
    post.title.titleize
  end

  def creator
    post.user.name.titleize
  end
end
