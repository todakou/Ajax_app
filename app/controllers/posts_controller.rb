class PostsController < ApplicationController

  def index
    @posts = Post.all.order(id: "DESC")
  end

 

  def create
    Post.create(content: params[:content])
    reddirect_to action: :index
  end

  def checked
    post = Post.find(params[:id])
    if post.checked
      post.update(checked: false)
    else
      post.uodate(checked: true)
    end

    item = Post.find(params [:id])
    render json: { post: item }
  end
end

