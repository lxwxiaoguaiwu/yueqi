class TeachersController < ApplicationController
  before_action :set_user,only:[:create,:update]

  def index
  end

  def create
    #params.permit!
    @teacher = Teacher.new(teacher_params)
    @teacher.user_id=@user.id
    @teacher.save
    redirect_to "/personalmodel/userpage?a_id=lxyzc"
  end

  def update
    @teacher = Teacher.find_by(user_id: @user.id)
    @teacher.update_attributes(teacher_params)
    redirect_to "/personalmodel/userpage?a_id=lxyzc"
  end

  private
  def set_user
    @user = User.find(current_user.id)
  end
  def teacher_params
    params.require(:teacher).permit(:name,:gender, :user_id, :minzu, :birthday, :idcard, :hometown, :stype, :wenhua, :zhuanye, :suozaidi, :worktime ,:mobile,:address, :worktel, :zipcode, :wechat, :email, :company, :duty, :wstatus, :colledge)
  end

  def update_attributes(attributes)
    self.attributes = attributes
    save
  end

end
