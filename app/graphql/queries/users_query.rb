# frozen_string_literal: true

module Queries
  class UsersQuery < BaseQuery
    type [Types::UserType], null: false
    description 'Returns a list of users'

    def resolve
      User.all
    end
  end
end
