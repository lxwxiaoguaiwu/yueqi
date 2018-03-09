class VideodetailsController < ApplicationController
  include RailsAdminContentBuilder::ContentBuilderHelpers

  before_action :set_news, only: [:show, :print]

  def videodetails
    @peerurls = Peerurl.limit(32)
    @articles = Posta.limit(5)
    #@articles = RailsAdminContentBuilder::ContentBuilder.where("content_builder_category_id"=>6).limit(5);
    @videos = Postc.limit(1)
    @news = Postc.find(params[:id])
    post = ContentBuilder.find(params[:id])
    @comments = post.root_comments
    @comment = Comment.new
    # @action = @user_profile.find_action(:follow, target: post)
  end

  def list_by_category
    @news = ContentBuilder.list_by_category(params[:category])
  end

  # def list_by_category
  #   @news = ContentBuilder.list_by_category(params[:category])
  # end

  def show
  end

  def print
   render layout: false
  end

  private

  def set_user_profile
    if current_user
      @user_profile = Profile.find_by(user_id: current_user.id)
      if @user_profile
        puts "======user_profile existed and is found=========="
      else
        @user_profile = Profile.create(user_id: current_user.id)
      end
    else
      @user_profile = Profile.find_by(user_id: 1)
    end

  end
end
