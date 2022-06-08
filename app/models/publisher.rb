class Publisher < ApplicationRecord
	include ActiveStorageSupport::SupportForBase64

	#include Rails.application.routes.url_helpers
	has_many :comicbooks, dependent: :destroy
  has_many :replies, dependent: :destroy
	has_one_base64_attached :image

	accepts_nested_attributes_for :comicbooks
end
