class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :name,:body,:email
   has_many :replies,dependent: :destroy
   belongs_to :comicbook
   
end
