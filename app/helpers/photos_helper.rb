module PhotosHelper
def rating_ballot
    if 	current_user.ratings.blank?
       current_user.ratings.new 
    else
       current_user.ratings.new 
    end
end
def current_user_rating
    if @rating = current_user.ratings.find_by_photo_id(params[:id])
        @rating.value
    else
        ""
    end
end
end
