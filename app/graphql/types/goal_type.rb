# frozen_string_literal: true

module Types
  class GoalType < Types::Base::Object
    field :id, ID, null: false
    field :name, String, null: false
    field :status, GoalStatusEnumType, null: false
    field :progress, Integer, null: false
    field :user, UserType, null: false
    field :approver, UserType, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
