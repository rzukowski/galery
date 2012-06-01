class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      redirect_to 'http://localhost:3000/users/new'
      format.json { render :json => @users }
    end
  end
  # GET /users/1
  # GET /users/1.json
  
  def show
    @user = User.find(params[:id])
    @photos = @user.photos.page(params[:page]).per(3)
  end

  # GET /users/new
  # GET /users/new.json
  def new
	@user = User.new

end


  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

      if @user.save
		sign_in @user
		redirect_to session['return-to']
	 else
        render 'new'
      end
  end


  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
 
  
end
