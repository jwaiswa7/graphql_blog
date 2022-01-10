class Types::PostType < Types::BaseObject
    field :id, ID, null: false
    field :body, String, null: false
    field :comments, [Types::CommentType], null: false
end