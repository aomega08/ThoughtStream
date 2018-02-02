class User < ApplicationRecord
  has_secure_password

  enum role: %w[subscriber contributor author editor admin]

  validates :email, :name, :role, presence: true
  validates :email, format: { with: /\A.+@.+\z/ }
end
