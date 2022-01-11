class Types::PostType < Types::BaseObject
    field :id, ID, null: false
    field :body, String, null: false
    field :comments, [Types::CommentType], null: false
end

class Types::PostInputType < GraphQL::Schema::InputObject
    graphql_name "PostInputType"

    description "Fields required to create a post"
    argument :id, ID, required: false
    argument :user_id, ID, required: true
    argument :body, String, required: false
end