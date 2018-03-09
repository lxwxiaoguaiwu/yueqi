class RegisterController < ApplicationController
  include RailsAdminContentBuilder::ContentBuilderHelpers

  before_action :set_news, only: [:show, :print]

  def register
    @peerurls = Peerurl.limit(32);
    @registers = RailsAdminContentBuilder::ContentBuilder.where("content_builder_category_id"=>11).limit(2);
    @xueyuanregisters = RailsAdminContentBuilder::ContentBuilder.where("content_builder_category_id"=>12).limit(1);
    @jigouregisters = RailsAdminContentBuilder::ContentBuilder.where("content_builder_category_id"=>13).limit(2);
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
