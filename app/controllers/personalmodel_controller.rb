class PersonalmodelController < ApplicationController
  before_action :set_user, only: [:userpage, :upasset, :zhucetongdao]
  skip_before_action :verify_authenticity_token, :only => ["apply"]

  def apply
    pid=params[:p_id]
    t = Student.find(pid)
    t.state = "已提交"
    t.save
  end

  def pimage
    aid=params[:a_id]
    p = Pimage.find(aid)
    t.pstatus = "已上传"
    t.save
  end

  def pimage
    aid=params[:a_id]
    p = Pvideo.find(aid)
    t.pstatus = "已上传"
    t.save
  end

  def userpage

    aid=params[:a_id]

    if aid=="lwdsy"
      @peerurls = Peerurl.limit(32);
      @posts = []
      @pimages = Pimage.where(user_id: @user.id)
      @pvideos = Pvideo.where(user_id: @user.id)

      actions = Action.limit(3)
      actions.each do |action|
        @posts << action.target
      end

      render :userpage
    elsif aid=="lgrxx"
      render :userinfo
    elsif aid=="lwdtp"
      @pimages = Pimage.where(user_id: @user.id)
      @pimage = Pimage.new
      render :userimg
    elsif aid=="lypsp"
      @pvideos = Pvideo.where(user_id: @user.id)
      @pvideo = Pvideo.new
      render :uservideo
    elsif aid=="lwdwz"
      render :userarticle
    elsif aid=="lgzsc"
      @postas = []
      @postbs = []
      @postds = []

      @user_profile.follow_content_builder_ids.each do |id|
        post = ContentBuilder.find(id)
        if post.type == "Posta"
          @postas << post
        elsif post.type == "Postb"
          @postbs << post
        elsif post.type == "Postd"
          @postds << post
        end
      end

      @mingjias = []
      @user_profile.follow_profile_action_ids.each do |id|
        action = Action.find(id)
        profile = Profile.find(action.user_id)
        mingjia = profile.user.mingjia

        @mingjias << mingjia
      end

      render :follow
    elsif aid=="lwdxx"
      render :usernews
    elsif aid=="lyjfk"
      @opinions = Opinion.new
      render :opinion
    elsif aid=="lsqlc"
      render :process
    elsif aid=="lsqxy"
      render :agreement
    elsif aid=="lgezc"
      @student = Student.find_by(user_id: @user.id)
      @eduexps = Eduexp.where(user_id: @user.id).order(created_at: :desc)
      @eduexp = Eduexp.new

      @workexps = Workexp.where(user_id: @user.id).order(created_at: :desc)
      @workexp = Workexp.new
      render :table
    elsif aid=="lxyzc"
      @teacher = Teacher.find_by(user_id: @user.id)
      @eduexps = Eduexp.where(user_id: @user.id).order(created_at: :desc)
      @eduexp = Eduexp.new
      @workexps = Workexp.where(user_id: @user.id).order(created_at: :desc)
      @workexp = Workexp.new
      render :teachertable
    elsif aid=="ldwzc"
      @orgnization = Orgnization.new
      render :orgnizationtable
    end
  end

  def zhucetongdao
    @student = Student.new;
    @teacher = Teacher.new;
    @orgnization = Orgnization.new;
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

  def update
    @user = User.find(params[:id])
    @user.update_attribute(:asset,params[:user][:asset])

    render :upavatar
  end


  private
   # Use callbacks to share common setup or constraints between actions.
   def set_user
     @user = User.find(current_user.id)

     if current_user
       @user_profile = Profile.find_by(user_id: current_user.id)
       if @user_profile
         puts "======user_profile existed and is found=========="
       else
         @user_profile = Profile.create(user_id: current_user.id)
       end
     end

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
