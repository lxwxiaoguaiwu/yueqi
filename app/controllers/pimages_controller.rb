class PimagesController < ApplicationController
  before_action :set_user,only:[:create,:update]
  skip_before_action :verify_authenticity_token, :only => ["destroy"]

  def index
  end

  def create
    puts "=============type===#{params[:leibie]}"

    @pimage = Pimage.create(pimage_params)
    @pimage.leibie = params[:leibie]
    @pimage.user = @user
    @pimage.save

    #params.permit!
    redirect_to "/personalmodel/userpage?a_id=lwdtp"


    @user_who_pimage = current_user
    c = params[:pimage][:title]



    if @pimage.save
      puts "=================pimage.save = true"
      respond_to do |format|
        format.html { render action: 'create' }
        format.js
      end
    end


  end

  def update
    @pimage = Pimage.find_by(user_id: @user.id)
    @pimage.update_attributes(pimage_params)
    redirect_to "/personalmodel/userpage?a_id=lwdtp"
  end

  def destroy
    tpjilu = Pimage.find(params[:id])
    tpjilu.destroy
  end

  private
  def set_user
    @user = User.find(current_user.id)
  end

  def pimage_params
    params.require(:pimage).permit(:title,:leibie,:desc, :pstatus, :asset, :user_id)
  end

  def update_attributes(attributes)
    self.attributes = attributes
    save
  end

end
