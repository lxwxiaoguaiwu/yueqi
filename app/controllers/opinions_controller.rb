class OpinionsController < ApplicationController
  before_action :set_user,only:[:create]

  def index
  end

  def create
    #params.permit!
    @opinions = Opinion.new(opinion_params)
    @opinions.user_id=@user.id
    @opinions.save
    redirect_to "/personalmodel"
  end

  private
  def set_user
    @user = User.find(current_user.id)
  end
  def opinion_params
    params.require(:opinion).permit(:id,:user, :contact, :content, :updated_at)
  end

end
