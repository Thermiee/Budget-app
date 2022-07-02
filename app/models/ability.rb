class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :manage, Operation, author_id: user.id
    can :manage, Group, author_id: user.id
  end
end
