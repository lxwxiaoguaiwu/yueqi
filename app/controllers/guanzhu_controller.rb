class GuanzhuController < ApplicationController

  before_action :set_news, only: [:show, :print]
  before_action :set_user_profile


  include RailsAdminContentBuilder::ContentBuilderHelpers


  def guanzhu
    @mingjia = Mingjia.find(params[:id])
    profile = @mingjia.user.profile
    action = @user_profile.create_action(:follow, target: profile)
    render :guanzhu
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
