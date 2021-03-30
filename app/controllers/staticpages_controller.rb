class StaticpagesController < ApplicationController
  def index
  end

  def show
    @posts = current_user.posts
  end
end
