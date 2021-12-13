class LikesController < ApplicationController
    before_action :authenticate_user!, only: [:create]
    
    def create
        @blog = Blog.find(params[:blog_id])
        @like = Like.find_by(user_id: current_user.id, blog_id: params[:blog_id])
        if @like
            @like.destroy
        else
            @like = @blog.likes.create
            @like.user_id = current_user.id
            @like.save
        end
        redirect_to blog_path(@blog)
    end
end
