# frozen_string_literal: true

module Mutations
  module Goals
    class UpdateMutation < Mutations::BaseMutation
      type Types::GoalType

      argument :id, ID, required: true
      argument :user_id, ID, required: false
      argument :approver_id, ID, required: false
      argument :name, String, required: false
      argument :status, Types::GoalStatusEnumType, required: false
      argument :progress, Integer, required: false

      def resolve(id:, **attributes)
        Goal.find(id).tap { |user| user.update!(attributes) }
      end
    end
  end
end
