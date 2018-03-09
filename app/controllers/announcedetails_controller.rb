class AnnouncedetailsController < ApplicationController
  # def announcedetails
  #   @articles = Article.limit(5);
  #   @videos = Video.limit(3);
  #   @posts = Post.limit(6);
  # end
  before_action :set_user_profile


  include RailsAdminContentBuilder::ContentBuilderHelpers

  before_action :set_news, only: [:show, :print]

  def announcedetails
    @peerurls = Peerurl.limit(32)
    @articles = Posta.limit(5)
    @videos = Postc.limit(3)
    @proclaims = Postb.limit(20)
    @news = RailsAdminContentBuilder::ContentBuilder.find(params[:id])
    post = ContentBuilder.find(params[:id])
    @action = @user_profile.find_action(:follow, target: post)
    @user_profile.create_action(:like, target: post)
    @count = post.reload.likes_count
  end

  def list_by_category
    @news = ContentBuilder.list_by_category(params[:category])
  end

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
