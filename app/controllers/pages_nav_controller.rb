class PagesNavController < ApplicationController
  def invest_in_nature
    @projects = policy_scope(Project)
  end

  def explore_projects
    @projects = policy_scope(Project)
  end
end
