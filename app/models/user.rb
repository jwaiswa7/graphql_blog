class User < ApplicationRecord
    has_many :posts, dependent: :destroy

    validates :firt_name, :last_name, presence: true
end
