class Comment < ActiveRecord::Base
attr_accessible :user_id, :photo_id, :image, :content, :photoid
belongs_to :photo
belongs_to :user
end
