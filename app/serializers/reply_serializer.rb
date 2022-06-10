class ReplySerializer < ActiveModel::Serializer
  attributes :id, :body,:review_id,:publisher_id
  #belongs_to :review
  #belongs_to :publisher
end
