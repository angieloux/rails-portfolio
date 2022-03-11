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
    blog = Blog.create!(title: 'Living in San Francisco as an Aussie', content: Faker::Lorem.paragraph(sentence_count: 30), category_id: 1, created_at: (DateTime.now - (rand * 21)), image_filename: "Blog1.png")
    blog.image.attach(io: File.open(Rails.root.join('app/assets/images/Blog1.png')), filename: 'Blog1.jpg')

    blog = Blog.create!(title: '20 CSS shortcuts that saved my life', content: Faker::Lorem.paragraph(sentence_count: 3), category_id: 2, created_at: (DateTime.now - (rand * 21)), image_filename: "Blog2.png")
    blog.image.attach(io: File.open(Rails.root.join('app/assets/images/Blog2.png')), filename: 'Blog2.jpg')

    blog = Blog.create!(title: 'Recreating Mamma Mia in Paros, Greece', content: Faker::Lorem.paragraph(sentence_count: 3), category_id: 1, created_at: (DateTime.now - (rand * 21)), image_filename: "Blog3.png")
    blog.image.attach(io: File.open(Rails.root.join('app/assets/images/Blog3.png')), filename: 'Blog3.jpg')

    blog = Blog.create!(title: 'What its really like to be a female gamer', content: Faker::Lorem.paragraph(sentence_count: 3), category_id: 3, created_at: (DateTime.now - (rand * 21)), image_filename: "Blog4.png")
    blog.image.attach(io: File.open(Rails.root.join('app/assets/images/Blog4.png')), filename: 'Blog4.jpg')

    blog = Blog.create!(title: 'Canadian Summer vs Winter: which is better?', content: Faker::Lorem.paragraph(sentence_count: 3), category_id: 1, created_at: (DateTime.now - (rand * 21)), image_filename: "Blog5.png")
    blog.image.attach(io: File.open(Rails.root.join('app/assets/images/Blog5.png')), filename: 'Blog5.jpg')

    blog = Blog.create!(title: "Nature is my Spirituality: and here's why", content: Faker::Lorem.paragraph(sentence_count: 3), category_id: 4, created_at: (DateTime.now - (rand * 21)), image_filename: "Blog6.png")
    blog.image.attach(io: File.open(Rails.root.join('app/assets/images/Blog6.png')), filename: 'Blog6.jpg')

end
