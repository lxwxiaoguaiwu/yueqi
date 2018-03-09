class CommentsController < ApplicationController

  def create
    @post = ContentBuilder.find(params[:cid])
    @user_who_commented = current_user
    c = params[:comment][:body]

    @comment = Comment.build_from( @post, @user_who_commented.id, c)

    if @comment.save
      respond_to do |format|
        format.html { render action: 'create' }
        format.js
      end
    end

  end

end
