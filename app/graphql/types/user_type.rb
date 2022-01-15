class Types::UserType < Types::BaseObject
    field :id, ID, null: true
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :street,String, null: true
    field :number, Int, null: true
    field :city, String, null: true
    field :post_code, String, null: true
    field :country, String, null: true
    field :address, String, null: true
    field :posts, [Types::PostType], null: false
    field :errors, [Types::ErrorType], null: true

    def errors
        object.errors.map { |e| {field_name: e.attribute, errors: object.errors[e.attribute]}}
    end

    def address
        "#{object.street} #{object.number} #{object.city} #{object.post_code} #{object.country}"
    end

end

class Types::UserInputType < GraphQL::Schema::InputObject 
    graphql_name "UserInputType"
    description "Variables required to create/update a user"
    argument :id, ID, required: false
    argument :first_name, String, required: false
    argument :last_name, String, required: false
    argument :street, String, required: false
    argument :number, Int, required: false
    argument :post_code, String, required: false
    argument :country, String, required: false
end