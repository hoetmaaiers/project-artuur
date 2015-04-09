# == Schema Information
#
# Table name: requests
#
#  id                   :integer          not null, primary key
#  phone_number         :string(255)
#  organization_name    :string(255)
#  street               :string(255)
#  nr                   :string(255)
#  town                 :string(255)
#  postal_code          :string(255)
#  contact_first_name   :string(255)
#  contact_last_name    :string(255)
#  contact_phone_number :string(255)
#  contact_email        :string(255)
#  workshop_date        :date
#  participant_count    :integer
#  participant_age      :string(255)
#  question             :text
#  created_at           :datetime
#  updated_at           :datetime
#

require 'test_helper'

class RequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
