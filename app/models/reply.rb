class Reply < ApplicationRecord
  belongs_to :review
  belongs_to :publisher
end
