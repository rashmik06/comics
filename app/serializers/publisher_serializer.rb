class PublisherSerializer < ActiveModel::Serializer
  attributes :id, :name, :image
  #has_many :comicbooks, dependent: :destroy
  #has_many :replies, dependent: :destroy

  def image
      
    Rails.application.routes.url_helpers.url_for(self.object.image)
  end
end
