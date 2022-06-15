require 'rails_helper'

# RSpec.describe Comicbook, type: :model do
#   subject { Comicbook.new(title: "New Life", description: "New Journey", publisher_id: "3", number: "2", artist: "john",writer: "john smith" )}
#   it "is valid with valid attributes" do
#     expect(subject).to be_valid
#   end
#   #pending "add some examples to (or delete) #{__FILE__}"
# end
# @customers = FactoryBot.create_list(:customer, 2)

RSpec.describe Comicbook, type: :model do
  subject { Comicbook.new(title: "New Life", description: "New Journey", publisher_id: "3", number: "2", artist: "john",writer: "john smith" )}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  #pending "add some examples to (or delete) #{__FILE__}"
end