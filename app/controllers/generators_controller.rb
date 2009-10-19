class GeneratorsController < ApplicationController

  def index
    @generators = Generator.all
  end

  # GET /generators/1
  # GET /generators/1.xml
  def show
    @generator = Generator.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def generate
    @generator = Generator.find(params[:id])

    respond_to do |format|
      format.html do
        redirect_to new_story_path(params.slice(:who, :what))
      end
    end
  end
end
