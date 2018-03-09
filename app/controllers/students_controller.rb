class StudentsController < ApplicationController
  before_action :set_user,only:[:create,:update]

  def index
  end

  def create
    @student = Student.new(student_params)
    @student.user_id=@user.id
    @student.save

    #params.permit!
    redirect_to "/personalmodel/userpage?a_id=lgezc"
  end

  def update
    @student = Student.find_by(user_id: @user.id)
    @student.update_attributes(student_params)
    redirect_to "/personalmodel/userpage?a_id=lgezc"
  end

  private
  def set_user
    @user = User.find(current_user.id)
  end
  def student_params
    params.require(:student).permit(:name,:gender, :user_id, :minzu, :birthday, :idcard, :hometown, :stype, :wenhua, :zhuanye, :suozaidi, :worktime ,:mobile,:address, :worktel, :zipcode, :wechat, :email, :company, :duty, :wstatus, :colledge,:sedate, :content)
  end

  def update_attributes(attributes)
    self.attributes = attributes
    save
  end

end
