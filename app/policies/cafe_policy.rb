class CafePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  def update?
    true
    # user.admin || record.user == user
  end

  def destroy?
    user.admin || record.user == user
  end
end
