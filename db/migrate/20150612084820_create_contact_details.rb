class CreateContactDetails < ActiveRecord::Migration
  def change
    create_table :contact_details do |t|
      t.integer :userId
      t.string :phone1
      t.string :phone2
      t.string :email1
      t.string :email2
      t.text :birthPlace
      t.text :residence

      t.timestamps
    end
  end
end
