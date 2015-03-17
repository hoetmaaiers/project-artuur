# == Schema Information
#
# Table name: workshops
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  type       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Workshop < ActiveRecord::Base
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :audiences, :types
end
