class UsersController < ApplicationController
  before_action :authenticate_user!  # Ensure the user is logged in

  def show
    @user = current_user  # Get the current user
    @projects = @user.projects  # Assuming the user has many projects
  end
end
