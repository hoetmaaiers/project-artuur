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

require 'test_helper'

class WorkshopTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
