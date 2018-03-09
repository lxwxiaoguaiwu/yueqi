class EduexpsController < ApplicationController
  before_action :set_user,only:[:create,:update]
  skip_before_action :verify_authenticity_token, :only => ["destroy"]

  def index
  end

  def create

    @eduexp = Eduexp.create(eduexp_params)
    @eduexp.user = @user
    @eduexp.save
    puts "=============@eduexp.id===#{@eduexp.id}"

    #params.permit!
    redirect_to "/personalmodel/userpage?a_id=lgezc"


    @user_who_eduexp = current_user
    c = params[:eduexp][:name]


    if @eduexp.save
      puts "=================eduxp.save = true"
      respond_to do |format|
        format.html { render action: 'create' }
        format.js
      end
    end


  end

  def update
    @eduexp = Eduexp.find_by(user_id: @user.id)
    @eduexp.update_attributes(eduexp_params)
    redirect_to "/personalmodel/userpage?a_id=lgezc"
  end

  def destroy
    jilu = Eduexp.find(params[:id])
    jilu.destroy
  end

  private
  def set_user
    @user = User.find(current_user.id)
  end

  def eduexp_params
    params.require(:eduexp).permit(:name,:sedate, :content)
  end

  def update_attributes(attributes)
    self.attributes = attributes
    save
  end

end
