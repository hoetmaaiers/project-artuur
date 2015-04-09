class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :workshop_id

      t.string 'phone_number'

      t.string 'organization_name'
      t.string 'street'
      t.string 'nr'
      t.string 'town'
      t.string 'postal_code'

      t.string 'contact_first_name'
      t.string 'contact_last_name'
      t.string 'contact_phone_number'
      t.string 'contact_email'

      t.date 'workshop_date'

      t.integer 'participant_count'
      t.string 'participant_age'

      t.text 'question'

      t.timestamps
    end
  end
end
