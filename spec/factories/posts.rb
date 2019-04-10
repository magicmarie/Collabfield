FactoryBot.define do
  factory :post do
    title {Faker::Name.unique.name}
    content {Faker::Lorem.sentence(word_count = 21)}
    user
    category
  end
end
