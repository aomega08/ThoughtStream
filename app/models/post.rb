class Post < ApplicationRecord
  extend FriendlyId

  friendly_id :title, use: :history

  has_many :post_revisions

  delegate :title, to: :latest_revision

  def latest_revision
    post_revisions.order(created_at: :desc).first || post_revisions[-1]
  end

  def content
    latest_revision.raw_content
  end
end
