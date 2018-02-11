class PostsController < ApplicationController
  def show
    post = Post.find(params[:id])

    set_meta_tags(MetaDataUtils.post_meta(post))

    render locals: {
      post: post
    }
  end
end
