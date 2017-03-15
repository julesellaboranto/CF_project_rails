class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
<<<<<<< Updated upstream
=======

  #rescue_from CanCan::AccessDenied do |exception|
    #redirect_to main_app.root_url, :alert => exception.message
  #end
>>>>>>> Stashed changes
end
