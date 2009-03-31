class NotdController < ApplicationController
  
  caches_page :index, :show

  def index
  end

  def show
    @story = Story.find_by_permalink!(params[:id])
  end
end
