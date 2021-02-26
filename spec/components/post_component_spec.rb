require 'rails_helper'

RSpec.describe PostComponent do
  subject(:component) { described_class.new(post: post) }

  let(:post) { instance_double(Post, title: "a new post", user: user) }
  let(:user) { instance_double(User, name: "a username") }

  describe "#title" do
    it "returns the title" do
      expect(component.title).to eq("A New Post")
    end
  end

  describe "#creator" do
    it "returns the posts creators name" do
      expect(component.creator).to eq("A Username")
    end
  end
end
