# class ZhucetongdaoController < ApplicationController
#   skip_before_action :verify_authenticity_token
#
#   def index
#     @peerurls = Peerurl.limit(32);
#   end
#
#   def update
#     @user = User.find(params[:id])
#     @user.update_attribute(:asset,params[:user][:asset])
#
#     render :upavatar
#   end
#
#   def userpage
#     render :userpage
#   end
#
#   def userinfo
#     render :userinfo
#   end
#
#   def table
#     @student = Student.new;
#     render :table
#   end
#
#   def teachertable
#     @teacher = Teacher.new;
#     render :teachertable
#   end
#
#   def orgnizationtable
#     @orgnization = Orgnization.new;
#     render :orgnizationtable
#   end
#
#   private
#
#   # Use strong_parameters for attribute whitelisting
#   # Be sure to update your create() and update() controller methods.
#
#   def user_params
#     params.require(:user).permit(:asset)
#   end
# end
