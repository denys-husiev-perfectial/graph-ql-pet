# frozen_string_literal: true

module Mutations
  module Goals
    class DestroyMutation < Mutations::BaseMutation
      type Types::UserType

      argument :id, ID, required: true

      def resolve(id:)
        User.find(id).destroy!
      end
    end
  end
end
