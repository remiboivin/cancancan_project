# frozen_string_literal: true
class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    # can :read, Home::index, public: true
    if user.present?  # additional permissions for logged in users (they can manage their own profil)
      can :manage, Dashboard, user_id: user.id
      if user.has_role?(:admin)
        can :manage, :all # user can perform any action on any object
      elsif user.has_role?(:manager)
        can :read, :all

      end
    end
  end
end
