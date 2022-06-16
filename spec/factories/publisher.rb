FactoryBot.define do
  factory :publisher do
     name { "John" }

#FactoryBot.define do
  factory :comicbook do
    association :publisher
    title { "New Life" }
    description {"New Journey"}
    number {"2"}
    artist {"john"}
    writer {"john smith"}
  end
end
end


  # sequence(:name) { |n| "name#{n}" }
  #   #name { "John" }
  #   trait :with_comicbook do
  #     after(:build) do |object|
  #       FactoryBot.build_list(:comicbook, 2, publisher_id: object.id)
  #       object.reload # to reload the association. You could avoid the reload by using your association (ie: object.contents = ...)
  #     end
  #   end