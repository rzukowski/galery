class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :user_id
      t.string :photo_id
      t.integer :value

      t.timestamps
    end
  end
end
