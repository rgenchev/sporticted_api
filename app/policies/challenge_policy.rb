class ChallengePolicy < ApplicationPolicy
  def index?
    user.present? && !user.is_host
  end

  def show?
    index? && (scope.where(challenger_id: user.id).exists? || scope.where(challenged_id: user.id).exists?)
  end

  def update?
    user.present? &&
      ((scope.where(challenger_id: user.id).exists? || scope.where(challenged_id: user.id).exists?) || record.host.user == user)
  end
end
