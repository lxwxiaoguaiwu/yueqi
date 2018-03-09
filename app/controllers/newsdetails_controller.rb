class NewsdetailsController < ApplicationController
  before_action :set_user_profile

  # def newsdetails
  #   @articles = Article.limit(5);
  #   @videos = Video.limit(4);
  #   @posts = Post.limit(6);
  # end

  include RailsAdminContentBuilder::ContentBuilderHelpers

  before_action :set_news, only: [:show, :print]

  def newsdetails
    @peerurls = Peerurl.limit(32)
    @articles = Posta.limit(5)
    #@articles = RailsAdminContentBuilder::ContentBuilder.where("content_builder_category_id"=>6).limit(5);
    @videos = Postc.limit(1)
    @news = Posta.find(params[:id])
    post = ContentBuilder.find(params[:id])
    @comments = post.root_comments
    @comment = Comment.new
    @action = @user_profile.find_action(:follow, target: post)
    @user_profile.create_action(:like, target: post)
    @count = post.reload.likes_count

    puts "=============likes_count:========#{@count}"
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
