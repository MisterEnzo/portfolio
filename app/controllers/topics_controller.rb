class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end
  def show
    @topic = Topic.find(params[:id])
    if logged_in?(:site_admin)
      @blogs = @topic.blogs.recent
    else
      @blogs = @topic.blogs.published
    end
  end
end
