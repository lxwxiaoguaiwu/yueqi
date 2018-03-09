class PostsController < ApplicationController

  before_action :set_news, only: [:show, :print]
  before_action :set_user_profile


  include RailsAdminContentBuilder::ContentBuilderHelpers

  def index
    if params[:slug] == 2
      @news = RailsAdminContentBuilder::ContentBuilder.where("content_builder_category_id"=>params[:slug])
      #@news = find_content_created_by_slug(params[:slug])
    elsif
      @news = RailsAdminContentBuilder::ContentBuilder.all
    end
  end

  def list_by_category
    @news = ContentBuilder.list_by_category(params[:category])
  end

  def stara
    @post = ContentBuilder.find(params[:id])
    action = @user_profile.create_action(:follow, target: @post)
    puts "==============#{action.present?}"

    render :star
  end

  def print
   render layout: false
  end

  private

  def set_news
    @news = ContentBuilder.find_by_slug(params[:slug])
    @news.content_builder_count_reads.create
  end

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
