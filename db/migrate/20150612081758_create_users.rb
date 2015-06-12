class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :icSerie
      t.integer :icNumber
      t.decimal :cnp
      t.string :sex
      t.text :description
      t.string :nationality
      t.string :maritalStatus
      t.integer :children
      t.integer :contactId

      t.timestamps
    end
  end
end
