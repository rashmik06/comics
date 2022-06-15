FactoryBot.define do
  factory :comicbook1 do
    association :publisher
    title { "New Life" }
    description {"New Journey"}
    publisher_id {"3"}
    number {"2"}
    artist {"john"}
    writer {"john smith"}
  end
end