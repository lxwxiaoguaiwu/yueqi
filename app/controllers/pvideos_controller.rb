class PvideosController < ApplicationController
  before_action :set_user,only:[:create,:update]
  skip_before_action :verify_authenticity_token, :only => ["destroy"]

  def index
  end

  def create

    @pvideo = Pvideo.create(pvideo_params)
    @pvideo.user = @user
    @pvideo.save
    puts "=============@pvideo.id===#{@pvideo.id}"

    #params.permit!
    redirect_to "/personalmodel/userpage?a_id=lypsp"


    @user_who_pvideo = current_user
    c = params[:pvideo][:title]


    if @pvideo.save
      puts "=================pvideo.save = true"
      respond_to do |format|
        format.html { render action: 'create' }
        format.js
      end
    end


  end

  def update
    @pvideo = Pvideo.find_by(user_id: @user.id)
    @pvideo.update_attributes(pvideo_params)
    redirect_to "/personalmodel/userpage?a_id=lypsp"
  end

  def destroy
    vijilu = Pvideo.find(params[:id])
    vijilu.destroy
  end

  private
  def set_user
    @user = User.find(current_user.id)
  end

  def pvideo_params
    params.require(:pvideo).permit(:title,:desc, :pstatus, :source, :user_id)
  end

  def update_attributes(attributes)
    self.attributes = attributes
    save
  end

end
