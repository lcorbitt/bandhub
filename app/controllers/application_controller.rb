class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include Pundit
  protect_from_forgery
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    # policy_name = exception.policy.class.to_s.underscore

    flash[:alert] = "You are not authorized to perform this action."
    redirect_to (root_path)
  end
end
