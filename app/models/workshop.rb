# == Schema Information
#
# Table name: workshops
#
#  id                       :integer          not null, primary key
#  title                    :string(255)
#  type                     :string(255)
#  description              :text
#  date                     :datetime
#  created_at               :datetime
#  updated_at               :datetime
#  cover_image_file_name    :string(255)
#  cover_image_content_type :string(255)
#  cover_image_file_size    :integer
#  cover_image_updated_at   :datetime
#

class Workshop < ActiveRecord::Base
  extend Enumerize

  enumerize :type, in: [:in_house, :on_request]

  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :audiences

  self.inheritance_column = nil

  has_attached_file :cover_image, styles: { large: "1024x1024>", medium: "350x350>", thumb: "100x100>" }, default_url: ":style/missing.gif"
  validates_attachment_content_type :cover_image, :content_type => /\Aimage\/.*\Z/

  has_many :requests

  def in_house?
    self.type == :in_house
  end

  def on_request?
    self.type == :on_request
  end
end
