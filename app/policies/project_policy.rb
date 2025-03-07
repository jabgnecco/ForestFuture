class ProjectPolicy < ApplicationPolicy
  class Scope < ApplicationPolicy::Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
      # scope.where(user: user)
      # user.admin? ? scope.all : scope.where(user: user)
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

end
