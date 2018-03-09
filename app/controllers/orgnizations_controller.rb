class OrgnizationsController < ApplicationController
  before_action :set_user,only:[:create]

  def index
  end

  def create
    #params.permit!
    @orgnization = Orgnization.new(orgnization_params)
    @orgnization.user_id=@user.id
    @orgnization.save
    redirect_to "/personalmodel"
  end

  private
  def set_user
    @user = User.find(current_user.id)
  end
  def orgnization_params
    params.require(:orgnization).permit(:name,:gender, :user_id, :minzu, :birthday, :idcard, :hometown, :stype, :wenhua, :zhuanye, :suozaidi, :worktime ,:mobile,:address, :worktel, :zipcode, :wechat, :email, :company, :duty, :wstatus, :colledge)
  end

end
