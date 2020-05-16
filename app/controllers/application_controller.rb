class ApplicationController < ActionController::API

    # Use a null session to protect from CSRF
    protect_from_forgery with: :null_session
    before_action :authenticate_user!

end
