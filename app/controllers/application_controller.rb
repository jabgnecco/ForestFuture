class ApplicationController < ActionController::Base
  include Pundit::Authorization

  before_action :authenticate_user!
  # after_action :verify_authorized, except: :devise_controller?, unless: :skip_pundit?
  # after_action :verify_policy_scoped, except: :devise_controller?, unless: :skip_pundit?

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /^(rails_)?admin|pages$/
  end

end
