class ComponentsController < ApplicationController
  include RailsAdminContentBuilder::ContentBuilderHelpers

  before_action :set_news, only: [:show, :print]

  def contact
    @peerurls = Peerurl.limit(32);
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
