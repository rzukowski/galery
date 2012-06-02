class Photo < ActiveRecord::Base
has_many :ratings
has_many :raters, :through => :ratings, :source => :users

attr_accessible :name, :user_id, :image
belongs_to :user
has_many :comments
mount_uploader :image, ImageUploader

def average_rating
    @value = 0
    self.ratings.each do |rating|
        @value = @value + rating.value
    end
    @total = self.ratings.size
    @value.to_f / @total.to_f
    self.update_attribute(:average_rat, @total.to_f == 0 ? 0.0 : @value.to_f / @total.to_f)
end



end
