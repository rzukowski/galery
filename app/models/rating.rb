class Rating < ActiveRecord::Base
attr_accessible :value

    belongs_to :photo
    belongs_to :user
end
