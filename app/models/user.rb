# frozen_string_literal: true

# A generic user. Some users can publish posts, others can only comment.
class User < ApplicationRecord
  has_secure_password

  enum role: %w[subscriber contributor author editor admin]

  validates :email, :name, :role, presence: true
  validates :email, format: { with: /\A.+@.+\z/ }

  def can_use_dashboard?
    role.in?(%w[contributor author editor admin])
  end
end
