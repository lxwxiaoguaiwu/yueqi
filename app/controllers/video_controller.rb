class VideoController < ApplicationController
  include RailsAdminContentBuilder::ContentBuilderHelpers

  before_action :set_news, only: [:show, :print]

  def video
    @peerurls = Peerurl.limit(32);
    @videos = Postc.limit(1);
    @mingjiums = RailsAdminContentBuilder::ContentBuilder.where("content_builder_category_id"=>3).limit(6);
  end

  # def list_by_category
  #   @news = ContentBuilder.list_by_category(params[:category])
  # end

  def show
  end

  def print
   render layout: false
  end
end
