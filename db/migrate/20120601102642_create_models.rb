class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :Rating
      t.string :user_id
      t.string :photo_id
      t.integer :value

      t.timestamps
    end
  end
end
