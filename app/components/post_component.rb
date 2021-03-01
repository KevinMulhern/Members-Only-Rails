class PostComponent < ViewComponent::Base
  attr_reader :post

  def initialize(post:)
    @post = post
  end

  def title
    post.title.capitalize
  end

  def creator_name
    post.user.name.titleize
  end

  def created_at
    post.created_at.to_s(:optional_year)
  end
end
