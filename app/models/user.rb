class User < ApplicationRecord
    has_many :posts, dependent: :destroy

    with_options presence: true do
      validates :first_name
      validates :last_name
      validates :street
      validates :number
      validates :post_code
      validates :country
      validates :email
    end
end
