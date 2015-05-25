class WorkshopSerializer < ActiveModel::Serializer
  attributes :id, :title, :type, :description, :date, :cover_image

  embed :ids, :include => true

  has_many :tags
  has_many :audiences


  def cover_image
    # object.cover_image.url()
    if object.cover_image.exists?
      scope.image_url(object.cover_image.url(:large))
    else
      'http://placehold.it/200x200'
    end
  end
end
