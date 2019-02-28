class User < ApplicationRecord
  validates :name, presence: true,
    length: { maximum: 15}

  validates :email, presence: true,
    format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}

  has_secure_password
  validates :password, :password_confirmation, format: {with: /\A(?=.*?[a-z])(?=.*?[0-9])[a-z0-9]+\z/i},
    length:{ minimum:8, maximum:32}

  has_many :topics
end
