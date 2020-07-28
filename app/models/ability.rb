# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(person)
    person ||= Person.new # guest user (not logged in)

    if person.admin?
      can :manage, :all
    end

    if person.provider?
      can :read, :all
      # can :manage, Product
    end

    if person.client?
      can :read, :all
    end
  end
end
