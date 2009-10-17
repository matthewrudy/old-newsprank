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
      format.xml  { render :xml => @story }
    end
  end



end
