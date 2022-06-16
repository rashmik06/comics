require 'rails_helper'

RSpec.describe Publisher, type: :model do

   #subject { Publisher.new(name: "")}
  it "is not valid without a name" do
     #subject.name=nil
    #expect(subject).to_not be_valid

     publisher = Publisher.new(name: "")
  expect(publisher).to_not be_valid
  end
 # pending "add some examples to (or delete) #{__FILE__}"

 # it "create with comicbook" do
 #     FactoryBot.build(:publisher) do |user|
  
 #    FactoryBot.build(:comicbook, 2)
 #  end
 #  end 
end
