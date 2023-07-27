puts "🌱 Seeding spices..."

# Seed your database here

require 'faker'


5.times do
    User.create(name: Faker::Name.name)
  end

  users = User.all
  users.each do |user|
    3.times do
      user.reviews.create(
        title: Faker::Lorem.sentence(word_count: 3),
        content: Faker::Lorem.paragraph(sentence_count: 2)
      )
    end
  end

puts "✅ Done seeding!"
