class PostFormComponent < ViewComponent::Base
  delegate :current_user, to: :helpers

  attr_reader :post

  def initialize(post:)
    @post = post
  end
end
