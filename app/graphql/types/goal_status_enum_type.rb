# frozen_string_literal: true

module Types
  class GoalStatusEnumType < Types::Base::Enum
    Goal.statuses.each_key { value _1 }
  end
end
