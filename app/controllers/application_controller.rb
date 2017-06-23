class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  private
  def after_sign_out_path_for(user)
    root_path
  end
end
