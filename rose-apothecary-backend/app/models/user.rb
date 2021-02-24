class User < ApplicationRecord
    has_secure_password
    validates :username, :email, uniqueness: { case_sensitive: false }

    has_many :carts
    has_many :reviews
end
