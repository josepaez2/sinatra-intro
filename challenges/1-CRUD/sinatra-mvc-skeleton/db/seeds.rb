require 'faker'

10.times do |i|
  Note.create(title: Faker::HarryPotter.character,content: Faker::HarryPotter.quote, quantity: rand(9) + 1)
end

