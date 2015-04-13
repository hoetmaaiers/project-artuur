class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :title
      t.string :type
      t.text :description
      t.datetime :date

      t.boolean :published
      t.boolean :archived

      t.timestamps
    end
  end
end
