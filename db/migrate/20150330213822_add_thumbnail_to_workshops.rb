class AddThumbnailToWorkshops < ActiveRecord::Migration
  def self.up
    add_attachment :workshops, :cover_image
  end

  def self.down
    remove_attachment :workshops, :cover_image
  end
end
