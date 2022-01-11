module Types
  class MutationType < Types::BaseObject

    field :create_user, Types::UserType, mutation: Mutations::CreateUser

    field :create_post, Types::PostType, mutation: Mutations::CreatePost

    field :create_comment, Types::CommentType, mutation: Mutations::CreateComment

    field :update_user, Boolean, description: "updates a user" do 
      argument :user, Types::UserInputType, required: true
    end

    def update_user(user:)
      expected = User.where(id: user[:id]).first 
      expected&.update user.to_h
    end

    field :update_post, Boolean, description "Updates a post" do 
      argument :post, Types::PostInputType, required: true
    end

    def update_post(post:)
      expected = Post.where(id: post[:id]).first
      expected&.update post.to_h
    end

    field :update_comment, Boolean, description: "Updates a comment" do 
      argument :comment, Types::CommentInputType, required: true
    end

    def update_comment(comment:)
      expected = Comment.where(id: comment[:id]).first
      expected&.update comment.to_h
    end
  end
end
