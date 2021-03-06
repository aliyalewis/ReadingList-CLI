class User < ApplicationRecord
    has_many :books, through: :user_books
    has_many :user_books
    validates :name, presence: true
    validates :email, presence: true
end