# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: false
    field :first_name, String
    field :last_name, String
    field :movies_count, Integer, null: true
    field :movies, [Types::MovieType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def movies_count
      object.movies.size
    end
  end
end
