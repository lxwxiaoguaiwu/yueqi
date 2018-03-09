class TrainningController < ApplicationController
  include RailsAdminContentBuilder::ContentBuilderHelpers

  before_action :set_news, only: [:show, :print]

  def trainning
    @peerurls = Peerurl.limit(32);
    @trainnings = Postd.limit(20);
    @articles = Posta.limit(5);
    @videos = Postc.limit(3);
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
