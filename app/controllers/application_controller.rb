class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, :alert => exception.message
  end

end

class ApplicationController < ActionController::Base
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end
end