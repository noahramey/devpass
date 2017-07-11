class User < ApplicationRecord
  has_many :accounts
  has_secure_password
end
