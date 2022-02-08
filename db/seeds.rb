# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Category.count == 0 
    Category.create(name: 'Travel')
    Category.create(name: 'Coding')
    Category.create(name: 'Tech')
    Category.create(name: 'Lifestyle')
end

if Blog.count == 0
    Blog.create!(title: 'Living in San Francisco as an Aussie', content: Faker::Lorem.paragraph(sentence_count: 30), category_id: 1, created_at: (DateTime.now - (rand * 21)))
    Blog.create!(title: '20 CSS shortcuts that saved my life', content: Faker::Lorem.paragraph(sentence_count: 3), category_id: 2, created_at: (DateTime.now - (rand * 21)))
    Blog.create!(title: 'Recreating Mamma Mia in Paros, Greece', content: Faker::Lorem.paragraph(sentence_count: 3), category_id: 1, created_at: (DateTime.now - (rand * 21)))
    Blog.create!(title: 'What its really like to be a female gamer', content: Faker::Lorem.paragraph(sentence_count: 3), category_id: 3, created_at: (DateTime.now - (rand * 21)))
    Blog.create!(title: 'Canadian Summer vs Winter: which is better?', content: Faker::Lorem.paragraph(sentence_count: 3), category_id: 1, created_at: (DateTime.now - (rand * 21)))
    Blog.create!(title: "Nature is my Spirituality: and here's why", content: Faker::Lorem.paragraph(sentence_count: 3), category_id: 4, created_at: (DateTime.now - (rand * 21)))
end
