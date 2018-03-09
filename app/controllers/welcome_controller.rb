class WelcomeController < ApplicationController

  include RailsAdminContentBuilder::ContentBuilderHelpers

  before_action :set_news, only: [:show, :print]

  def index
    @proclaims = RailsAdminContentBuilder::ContentBuilder.where("content_builder_category_id"=>1).limit(11);
    @trainnings = Postd.limit(11);
    @articles = Posta.limit(5);
    @videos = Postc.limit(4);
    @mingjiums = Mingjia.limit(9);
    @slides = Slide.limit(4);
    @comment = Comment.new

    @student = Student.new;
    @teacher = Teacher.new;
    @orgnization = Orgnization.new;
  end

  def update
    @user = User.find(params[:id])
    @user.update_attribute(:asset,params[:user][:asset])

    render :upavatar
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
    end

  end
end
