require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'generates a slug from the its first revision' do
    post = Post.new
    post.post_revisions << PostRevision.new(title: 'Hello world', md_content: 'hello world')

    post.valid?
    expect(post.slug).to eq 'hello-world'
  end
end
