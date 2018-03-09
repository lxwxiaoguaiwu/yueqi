class NotableController < ApplicationController
  include RailsAdminContentBuilder::ContentBuilderHelpers
  before_action :set_user_profile
  before_action :set_news, only: [:show, :print]

  def notable
    @institutes = Institute.limit(4)
    @provinces = Province.limit(6)
    @colleges = College.limit(5)
    @arts = Art.limit(5)
    @peerurls = Peerurl.limit(32)

    # @profile = @user_profile.find_action(:follow, target: @mingjia)

    if params[:art_id]
      @mingjiums = Mingjia.where(:art_id => params[:art_id])
    else
      @mingjiums = Mingjia.limit(6)
    end

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
