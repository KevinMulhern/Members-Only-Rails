require 'rails_helper'

RSpec.describe PostComponent do
  subject(:component) { described_class.new(post: post) }

  let(:post) { instance_double(Post, title: "a new post", user: user, created_at: Time.utc(2021, 2, 10, 15, 56)) }
  let(:user) { instance_double(User, name: "a username") }

  describe "#title" do
    it "returns the title" do
      expect(component.title).to eq("A new post")
    end
  end

  describe "#creator_name" do
    it "returns the posts creators name" do
      expect(component.creator_name).to eq("A Username")
    end
  end

  describe "#created_at" do
    it "returns the date and time the post was created at" do
      expect(component.created_at).to eq("February 10 at  3:56 PM")
    end
  end
end
