# frozen_string_literal: true

module Mutations
  module Goals
    class CreateMutation < Mutations::BaseMutation
      type Types::GoalType

      argument :user_id, ID, required: true
      argument :approver_id, ID, required: false
      argument :name, String, required: true
      argument :status, Types::GoalStatusEnumType, required: false, default_value: Goal.statuses[:todo]
      argument :progress, Integer, required: false

      def resolve(**attributes)
        Goal.create!(attributes)
      end
    end
  end
end
