class User < ApplicationRecord
    has_secure_password
    validates :username, :email, uniqueness: { case_sensitive: false }

    # has_one :cart
    has_many :reviews
    has_many :cart_items
    has_many :items, through: :cart_items

    # serialize :cart, Array
end
