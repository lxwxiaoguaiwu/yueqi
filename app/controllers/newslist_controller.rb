class NewslistController < ApplicationController
  before_action :set_user_profile
  # def newslist
  #   @articles = Article.limit(5);
  #   @videos = Video.limit(2);
  #   @posts = Post.limit(6);
  # end
  include RailsAdminContentBuilder::ContentBuilderHelpers

  before_action :set_news, only: [:show, :print]

  def newslist
    @peerurls = Peerurl.limit(32);
    @articles = Posta.limit(5);
    @videos = Postc.limit(1);

  end
  def wenzhanglist
    @articles = Posta.limit(5);
  end
  def videolist
    @videos = Postc.limit(2);
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
    end

  end
end
