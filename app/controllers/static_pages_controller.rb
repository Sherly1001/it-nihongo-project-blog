class StaticPagesController < ApplicationController
  def home
    @blogs = Blog.all
  end
end
