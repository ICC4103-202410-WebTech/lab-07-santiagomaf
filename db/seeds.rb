# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.delete_all
User.delete_all


User.create!([
    {name: "John Doe", email: "j@mail.com", password: "123456"},
    { name: "Jane Smith", email: "jane@mail.com", password: "password123" },
    { name: "Alice Johnson", email: "alice@mail.com", password: "password456" },
    { name: "Bob Williams", email: "bob@mail.com", password: "password789" },
    { name: "Mike Davis", email: "mike@mail.com", password: "passwordabc" }
])




tag_1 = Tag.create!(name: "Tag 1")
tag_2 = Tag.create!(name: "Tag 2")
tag_3 = Tag.create!(name: "Tag 3")
tag_4 = Tag.create!(name: "Tag 4")
tag_5 = Tag.create!(name: "Tag 5")
# Create parent posts
parent_posts = Post.create!([
  { title: "Post 1", content: "Hello, world!", user: User.first, parent_post_id: nil, published_at: Time.now, tag_id: tag_1.id},
  # ...rest of your parent posts
])


Post.create!([
  { title: "Post 2", content: "Here are some useful Ruby tips and tricks.", user: User.first, parent_post_id: nil, published_at: Time.now, tag_id: tag_1.id},
  { title: "Post 3", content: "Here are some useful Ruby tips and tricks.", user: User.first, parent_post_id: parent_posts.first.id, published_at: Time.now, tag_id: tag_2.id },
  { title: "Post 4", content: "Here are some useful Ruby tips and tricks.", user: User.first, parent_post_id: parent_posts.first.id, published_at: Time.now, tag_id: tag_2.id},
  { title: "Post 5", content: "Here are some useful Ruby tips and tricks.", user: User.first, parent_post_id: parent_posts.first.id, published_at: Time.now, tag_id: tag_3.id},
  { title: "Post 6", content: "Here are some useful Ruby tips and tricks.", user: User.first, parent_post_id: parent_posts.first.id, published_at: Time.now, tag_id: tag_3.id},
  { title: "Post 7", content: "Here are some useful Ruby tips and tricks.", user: User.first, parent_post_id: parent_posts.first.id, published_at: Time.now, tag_id: tag_4.id},
  { title: "Post 8", content: "Here are some useful Ruby tips and tricks.", user: User.first, parent_post_id: parent_posts.first.id, published_at: Time.now , tag_id: tag_4.id},
  { title: "Post 9", content: "Here are some useful Ruby tips and tricks.", user: User.first, parent_post_id: parent_posts.first.id, published_at: Time.now, tag_id: tag_5.id},
  { title: "Post 10", content: "Here are some useful Ruby tips and tricks.", user: User.first, parent_post_id: parent_posts.first.id, published_at: Time.now, tag_id: tag_5.id},
])

