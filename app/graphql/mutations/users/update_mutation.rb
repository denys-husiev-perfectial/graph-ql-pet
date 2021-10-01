# frozen_string_literal: true

module Mutations
  module Users
    class UpdateMutation < Mutations::BaseMutation
      type Types::UserType

      argument :id, ID, required: true
      argument :first_name, String, required: false
      argument :last_name, String, required: false

      def resolve(id:, **attributes)
        User.find(id).tap { |user| user.update!(attributes) }
      end
    end
  end
end
