class PagesController < ApplicationController
  def home
    @projects = policy_scope(Project)
  end

  def index
    @projects = policy_scope(Project)
  end
end
