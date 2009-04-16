class Sites::Base < ApplicationController
  
  caches_page :index, :show

  def index
  end

  def show
    @story = Story.find_by_permalink!(params[:id])
    render :template => "/sites/show"
  end
end
