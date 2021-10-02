# frozen_string_literal: true

module Types
  class MutationType < GraphQL::Schema::Object
    field :create_user, mutation: Mutations::Users::CreateMutation
    field :update_user, mutation: Mutations::Users::UpdateMutation
    field :destroy_user, mutation: Mutations::Users::DestroyMutation

    field :create_goal, mutation: Mutations::Goals::CreateMutation
    field :update_goal, mutation: Mutations::Goals::UpdateMutation
    field :destroy_goal, mutation: Mutations::Goals::DestroyMutation
  end
end
