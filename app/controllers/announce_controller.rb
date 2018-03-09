class AnnounceController < ApplicationController
  # def announce
  #   @proclaims = Proclaim.limit(20);
  #   @videos = Video.limit(2);
  # end

  include RailsAdminContentBuilder::ContentBuilderHelpers

  before_action :set_news, only: [:show, :print]

  def announce
    @peerurls = Peerurl.limit(32);
    @articles = Posta.limit(5);
    @videos = Postc.limit(3);
    @proclaims = Postb.limit(20);
    # @news = RailsAdminContentBuilder::ContentBuilder.find(params[:id]);
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
