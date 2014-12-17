class BoogsController < ApplicationController
  respond_to :html
  
  def index
  end

  def new
    @boog =Boog.new
  end

  def create
    @boog = Boog.new(boog_param)
    @boog.save
    respond_with(@boog)
  end

  def show
    @boog = Boog.find(params[:id])
    respond_with(@boog)
  end

  private
  def boog_param
    params.require(:boog).permit(:title, :body)
  end
end
