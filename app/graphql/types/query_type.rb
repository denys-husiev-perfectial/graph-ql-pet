# frozen_string_literal: true

module Types
  class QueryType < GraphQL::Schema::Object
    field :users, resolver: Queries::UsersQuery
    field :user, resolver: Queries::UserQuery
  end
end
