class RatingsController < ApplicationController
    def create
            @photo = Photo.find_by_id(params[:photo_id])
            if current_user.id == @photo.id
                redirect_to photo_path(@photo), :alert => "Nie mozesz oceniac wlasnego zdjecia"
            else
                @rating = Rating.new(params[:rating])
                @rating.photo_id = @photo.id
                @rating.user_id = current_user.id
                if @rating.save
                    respond_to do |format|
                        format.html { redirect_to photo_path(@photo), :notice => "Ocena zostala dodana" }
                        format.js
                    end
                end
            end
        end

        def update
            @photo = Photo.find_by_id(params[:photo_id])
            if current_user.id == @photo.id
                redirect_to photo_path(@photo), :alert => "Nie mozesz oceniac wlasnego zdjecia"
            else
                @rating = current_user.ratings.find_by_photo_id(@photo.id)
                if @rating.update_attributes(params[:rating])
                    respond_to do |format|
                        format.html { redirect_to photo_path(@photo), :notice => "Ocena zostala zmieniona" }
                        format.js
                    end
                end
            end
        end

end
