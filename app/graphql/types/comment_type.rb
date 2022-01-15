class Types::CommentType < Types::BaseObject
    field :id, ID, null: true
    field :body, String, null: true
    field :errors, [Types::ErrorType], null: true

    def errors
        object.errors.map { |e| {field_name: e.attribute, errors: object.errors[e.attribute]}}
    end
end

class Types::CommentInputType < GraphQL::Schema::InputObject
    graphql_name "CommentInputType"
    description "Input fields required to create/update a comment"
    argument :id, ID, required: false
    argument :post_id, ID, required: true
    argument :body, String, required: false
end