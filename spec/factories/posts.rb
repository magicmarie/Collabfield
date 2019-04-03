FactoryBot.define do
  factory :post do
    title {Faker::Name.unique.name}
    content {Faker::Lorem.sentence}
    user
    category
  end
end
