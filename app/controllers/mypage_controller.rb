class MypageController < ApplicationController
  before_action :set_user, only: [:index, :upasset]

  def index
    @student = Student.new;
    @peerurls = Peerurl.limit(32);
  end

  def upasset
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Friend was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
   # Use callbacks to share common setup or constraints between actions.
   def set_user
     @user = User.find(current_user.id)
   end

   # Never trust parameters from the scary internet, only allow the white list through.
   def user_params
     params.require(:user).permit(
        :asset,
        :asset_original_w,
        :asset_original_h,
        :asset_crop_x,
        :asset_crop_y,
        :asset_crop_w,
        :asset_crop_h
      )
   end
end
