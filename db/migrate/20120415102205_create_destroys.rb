class CreateDestroys < ActiveRecord::Migration
  def change
    create_table :destroys do |t|
      t.string :fortunes

      t.timestamps
    end
  end
end
