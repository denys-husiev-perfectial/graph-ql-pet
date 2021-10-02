# frozen_string_literal: true

module Mutations
  module Goals
    class DestroyMutation < Mutations::BaseMutation
      type Types::GoalType

      argument :id, ID, required: true

      def resolve(id:)
        Goal.find(id).destroy!
      end
    end
  end
end
