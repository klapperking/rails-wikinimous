require 'faker'

10.times do
  Article.create(title: Faker::Movies::StarWars.wookie_sentence, content: Faker::Movies::StarWars.quote)
end
