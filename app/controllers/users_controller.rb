class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_user_profile


  def index
    @peerurls = Peerurl.limit(32);
  end

  def follow
    @postas = []
    @postbs = []
    @postds = []

    @user_profile.follow_content_builder_ids.each do |id|
      post = ContentBuilder.find(id)
      if post.type == "Posta"
        @postas << post
      elsif post.type == "Postb"
        @postbs << post
      elsif post.type == "Postd"
        @postds << post
      end
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update_attribute(:asset,params[:user][:asset])
    @pimages = Pimage.find(params[:id])
    redirect_to "/personalmodel/userpage?a_id=lwdsy"
  end

  def userpage
    @posts = []
    actions = Action.limit(3)
    actions.each do |action|
      @posts << action.target
    end
    render :userpage
  end

  def userinfo
    render :userinfo
  end

  def table
    @student = Student.new;
    render :table
  end

  def teachertable
    @teacher = Teacher.new;
    render :teachertable
  end

  def orgnizationtable
    @orgnization = Orgnization.new;
    render :orgnizationtable
  end

  def opinion
    @opinions = Opinion.new
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def user_params
    params.require(:user).permit(:asset)
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
