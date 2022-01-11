class Types::CommentType < Types::BaseObject
    field :id, ID, null: false
    field :body, String, null: false
end

class Types::CommentInputType < GraphQL::Schema::InputObject
    graphql_name "CommentInputType"
    description "Input fields required to create/update a comment"
    argument :id, ID, required: false
    argument :post_id, ID, required: true
    argument :body, String, required: false
end