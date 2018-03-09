class WorkexpsController < ApplicationController
  before_action :set_user,only:[:create,:update]
  skip_before_action :verify_authenticity_token, :only => ["destroy"]

  def index
  end

  def create
    puts "111111111111111111"
    @workexp = Workexp.create(workexp_params)
    @workexp.user = @user
    @workexp.save
    puts "1111111111111111111@workexp.id===#{@workexp.id}"

    #params.permit!
    redirect_to "/personalmodel/userpage?a_id=lgezc"


    @user_who_workexp = current_user
    c = params[:workexp][:name]


    if @workexp.save
      puts "=================workexp.save = true"
      respond_to do |format|
        format.html { render action: 'create' }
        format.js
      end
    end


  end

  def update
    @workexp = Workexp.find_by(user_id: @user.id)
    @workexp.update_attributes(workexp_params)
    redirect_to "/personalmodel/userpage?a_id=lgezc"
  end

  def destroy
    gzjl = Workexp.find(params[:id])
    gzjl.destroy
  end

  private
  def set_user
    @user = User.find(current_user.id)
  end

  def workexp_params
    params.require(:workexp).permit(:name,:sedate, :content,:distinct,:duty)
  end

  def update_attributes(attributes)
    self.attributes = attributes
    save
  end

end
