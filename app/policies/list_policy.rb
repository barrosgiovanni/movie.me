class ListPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user_id: user.id)
    end
  end

  def show?
    record.user_id == user.id
  end

  def new?
    create?
  end

  def create?
    true
  end

  def destroy?
    record.user_id == user.id
  end
end
