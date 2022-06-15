class Comicbook < ApplicationRecord

	belongs_to :publisher
  has_many :reviews, dependent: :destroy
  has_one_attached :image
  validates :title, presence: true
  validates :description, presence:true
end
