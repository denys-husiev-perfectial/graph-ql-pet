# frozen_string_literal: true

module Queries
  class UsersQuery < BaseQuery
    type Types::UserType.connection_type, null: false
    description 'Returns a list of users'

    def resolve
      User.all
    end
  end
end
