class TablePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index
    true
  end

  def show?
    true
  end

  def create?
    true
    # user.admin || record.user == user
  end

  def edit?
    true
  end

  def update?
    true
    # user.admin || record.user == user
  end

  def destroy?
    true
    # user.admin || record.user == user
  end
end
