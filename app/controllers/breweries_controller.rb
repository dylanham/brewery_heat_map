class BreweriesController < ApplicationController
  respond_to :json, :html

  def index
    respond_with(StateMap::AREAS)
  end
end
