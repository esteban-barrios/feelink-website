# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    if user
      if user.admin
        can :manage, :all
      elsif user.encargado
        can [:show, :edit], Empresa, id: user.empresa_id
        can :show, User, empresa_id: user.empresa_id
        can :edit, User, id: user.id
        can :manage, Simulacion, :all
      else
        can :show, Empresa, id: user.empresa_id
        can [:show, :edit], User, id: user.id
        can [:show, :read], Simulacion, user_id: user.id
      end
    end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
