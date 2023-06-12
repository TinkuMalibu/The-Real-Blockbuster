class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[firstname lastname address phone_number avatar])

  def after_sign_in_path_for(resource)
    if (request.referer.include?("peliculas=ok") == true)
        movies_path
    else
      super
    end
  end
    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: %i[firstname lastname address phone_number avatar])
  end
end
