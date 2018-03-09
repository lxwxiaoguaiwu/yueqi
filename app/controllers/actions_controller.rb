class ActionsController < ApplicationController
  def follow
    @actions = Action.limit(3)
  end
end
