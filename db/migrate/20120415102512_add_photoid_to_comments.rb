class AddPhotoidToComments < ActiveRecord::Migration
  def change
    add_column :comments, :photoid, :integer

  end
end
