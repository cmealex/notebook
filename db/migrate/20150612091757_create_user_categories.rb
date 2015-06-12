class CreateUserCategories < ActiveRecord::Migration
  def change
    create_table :user_categories do |t|
      t.integer :userId
      t.integer :categoryId
      t.string :institutionName
      t.string :city

      t.timestamps
    end
  end
end
