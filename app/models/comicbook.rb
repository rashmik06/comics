class Comicbook < ApplicationRecord
	belongs_to :publisher
  has_many :reviews, dependent: :destroy
  has_one_attached :image
end
