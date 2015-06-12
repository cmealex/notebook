class CreateInvalidities < ActiveRecord::Migration
  def change
    create_table :invalidities do |t|
      t.integer :type
      t.timestamps
    end
  end
end
