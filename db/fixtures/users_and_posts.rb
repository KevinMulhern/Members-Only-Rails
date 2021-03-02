users= User.seed(
  :id,
  { id: 1000, name: Faker::Name.unique.name, email: Faker::Internet.unique.safe_email, password: Faker::Internet.password },
  { id: 2001, name: Faker::Name.unique.name, email: Faker::Internet.unique.safe_email, password: Faker::Internet.password },
  { id: 3002, name: Faker::Name.unique.name, email: Faker::Internet.unique.safe_email, password: Faker::Internet.password },
  { id: 4003, name: Faker::Name.unique.name, email: Faker::Internet.unique.safe_email, password: Faker::Internet.password },
  { id: 5004, name: Faker::Name.unique.name, email: Faker::Internet.unique.safe_email, password: Faker::Internet.password },
  { id: 6005, name: Faker::Name.unique.name, email: Faker::Internet.unique.safe_email, password: Faker::Internet.password },
  { id: 7006, name: Faker::Name.unique.name, email: Faker::Internet.unique.safe_email, password: Faker::Internet.password },
)


5.times do |num|
  users.each do |user|
    Post.seed(:id) do |post|
      post.id = user.id + num
      post.title = Faker::Verb.base
      post.content = Faker::Marketing.buzzwords
      post.user_id = user.id
    end
  end
end
