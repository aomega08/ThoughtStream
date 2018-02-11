class PostRevision < ApplicationRecord
  belongs_to :post

  validates :title, :raw_content, presence: true

  def md_content=(markdown)
    self.raw_content = markdown
  end
end
