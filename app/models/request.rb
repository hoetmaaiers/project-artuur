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

class Request < ActiveRecord::Base
  belongs_to :workshop

  validates :street, presence: true, on: :request
  validates :nr, presence: true, on: :request
  validates :town, presence: true, on: :request
  validates :postal_code, presence: true, on: :request

  validates :contact_first_name, presence: true#, on: :request
  validates :contact_last_name, presence: true#, on: :request
  validates :contact_phone_number, presence: true, on: :request
  validates :contact_email, presence: true, format: { with: /@/ }#, on: :request

  validates :workshop_date, presence: true, on: :request

  validates :participant_age, presence: true, on: :request
end
