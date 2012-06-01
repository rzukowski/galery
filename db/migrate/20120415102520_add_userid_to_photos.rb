class AddUseridToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :userid, :integer

  end
end
