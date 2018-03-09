class NotabledetailsController < ApplicationController
  include RailsAdminContentBuilder::ContentBuilderHelpers

  before_action :set_news, only: [:show, :print]
  before_action :set_user_profile


  def notabledetails

    @peerurls = Peerurl.limit(32);
    @videos = Postc.limit(4);
    @mingjiums = Mingjia.find(params[:id]);

    profile = @mingjiums.user.profile

    @action = @user_profile.follow_profile?(profile)
  end

  private

  def show
  end

  def print
   render layout: false
  end

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
