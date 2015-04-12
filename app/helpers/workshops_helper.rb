module WorkshopsHelper
  def workshop_class workshop
    klass = []
    klass.push('workshop-item')

    # add tag filters
    workshop.tags.each do |tag|
      klass.push "tag-#{tag.id}"
    end

    # add audience filters
    workshop.audiences.each do |audience|
      klass.push "audience-#{audience.id}"
    end

    return klass
  end
end
