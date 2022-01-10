class Types::UserType < Types::BaseObject
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :street,String, null: false
    field :number, Int, null: false
    field :city, String, null: false
    field :post_code, String, null: false
    field :country, String, null: false
    field :address, String, null: false
    field :posts, [Types::PostType], null: false

    def address
        "#{object.street} #{object.number} #{object.city} #{object.post_code} #{object.country}"
    end

end