class CreateUserInvalidities < ActiveRecord::Migration
  def change
    create_table :user_invalidities do |t|
      t.integer :userId
      t.integer :invalidityId
      t.string :grade

      t.timestamps
    end
  end
end
