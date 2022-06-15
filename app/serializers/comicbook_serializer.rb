class ComicbookSerializer < ActiveModel::Serializer

  include Rails.application.routes.url_helpers


  attributes :id,:title,:description, :publisher_id,:number,:artist,:image

  def image
    if self.object.image.attached?
    url_for(self.object.image)
  else
    nil
  end
  end

 # attribute :image do |object|
 #    debugger
      
 #    Rails.application.routes.url_helpers.url_for(object.object.image)
 #  end


  #has_many :reviews, dependent: :destroy
  #belongs_to :publisher

  #has_many :reviews, dependent: :destroy
  #has_one_attached :image
end
