class SessionsController < ApplicationController
def new
end

def create
 user = User.authenticate(params[:session][:name],
                           params[:session][:password])
  if user.nil?
     flash[:message] = "Niepoprawna kombinacja użytkownik/hasło"

  render 'new'

  else
    sign_in user
      redirect_to session['return-to']
  end
end	
  
  def signed_in?
    !current_user.nil?
  end
  
   def destroy
    sign_out
    redirect_to session['return-to']
  end
  
end
