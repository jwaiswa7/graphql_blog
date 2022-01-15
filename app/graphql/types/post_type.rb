class Types::PostType < Types::BaseObject
    field :id, ID, null: true
    field :body, String, null: true
    field :comments, [Types::CommentType], null: true
    field :errors, [Types::ErrorType], null: true

    def errors
        object.errors.map { |e| {field_name: e.attribute, errors: object.errors[e.attribute]}}
    end
end

class Types::PostInputType < GraphQL::Schema::InputObject
    graphql_name "PostInputType"

    description "Fields required to create a post"
    argument :id, ID, required: false
    argument :user_id, ID, required: true
    argument :body, String, required: false
end