# frozen_string_literal: true

module Mutations
  module Users
    class CreateMutation < Mutations::BaseMutation
      type Types::UserType

      argument :first_name, String, required: true
      argument :last_name, String, required: true

      def resolve(**attributes)
        User.create!(attributes)
      end
    end
  end
end
