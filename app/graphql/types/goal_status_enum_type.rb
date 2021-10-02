# frozen_string_literal: true

module Types
  class GoalStatusEnumType < Types::Base::Enum
    Goal.statuses.each_key do |goal_status|
      value goal_status
    end
  end
end
