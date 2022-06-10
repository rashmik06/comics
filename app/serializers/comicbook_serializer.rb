class ComicbookSerializer < ActiveModel::Serializer

  attributes :id,:title,:description, :publisher_id,:number,:artist,:writer,:image

  def image
    
    Rails.application.routes.url_helpers.url_for(self.object.image)
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
