require 'faker'

puts "Clearing old data..."
Category.destroy_all
Task.destroy_all

puts "Seeding Categories..."

# create categories
5.times do
    Category.create(name: Faker::Computer.platform)
end

puts "Seeding tasks..."

# create tasks
25.times do
    Task.create(text: Faker::Hipster.sentence(word_count: 3), category_id: rand(1..5))
end

puts "Done!"