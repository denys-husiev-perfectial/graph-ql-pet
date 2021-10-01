# frozen_string_literal: true

class GraphQlPetSchema < GraphQL::Schema
  default_max_page_size 50

  use GraphQL::Schema::Timeout, max_seconds: 5

  max_depth 20

  mutation(Types::MutationType)
  query(Types::QueryType)
end
