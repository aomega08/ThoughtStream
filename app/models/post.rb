class Post < ApplicationRecord
  has_many :post_revisions

  delegate :title, to: :latest_revision

  def latest_revision
    post_revisions.order(created_at: :desc).first
  end

  def content
    latest_revision.raw_content
  end
end
