class Review < ApplicationRecord
  belongs_to :comicbook
  has_many :replies,dependent: :destroy
  #validates :email, uniqueness: true
   validates_uniqueness_of :email, scope: :comicbook_id
 
end
