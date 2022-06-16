class Review < ApplicationRecord
  belongs_to :comicbook
  has_many :replies,dependent: :destroy
  #validates :email, uniqueness: true
   validates_uniqueness_of :email, presence: true, scope: :comicbook_id
 
end
