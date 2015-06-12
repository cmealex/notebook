class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :userId
      t.string :docPath
      t.string :type

      t.timestamps
    end
  end
end
