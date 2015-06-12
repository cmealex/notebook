class CreateDues < ActiveRecord::Migration
  def change
    create_table :dues do |t|
      t.integer :userId
      t.float :sum
      t.datetime :date
      t.string :dueType

      t.timestamps
    end
  end
end
