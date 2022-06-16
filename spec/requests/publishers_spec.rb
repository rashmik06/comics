require 'rails_helper'

#RSpec.describe "Publishers", type: :request do
#   describe "GET /index" do
#     it " shows all publishers" do
#     publisher = FactoryBot(:publisher)
#     get :index
#     assigns(:publishers).should eq([publisher])
#     #pending "add some examples (or delete) #{__FILE__}"
#   end
# end

#   describe "Post /create"do
#     it "create publisher" do
#       publisher = FactoryBot.build(:publisher)
#       post :create, params: {name:"john"}
#       expect(publisher).to eq("john")
#     end
#   end
# end


RSpec.describe PublishersController,type: :controller do
  describe "Post /create"do
    it "create publisher" do
      debugger
      publisher = FactoryBot.create(:publisher)
      post :create, params: publisher_params
      expect(publisher).to eq("john")
    end
  end
end
#/home/rails/comics/spec/requests