class BoysController < ApplicationController
  before_action :find_by_id ,only:[:show, :edit, :update, :destroy]

  def index
    @boys = Boy.all
  end

  def new
    @boy = Boy.new
  end

  def create
    @boy = Boy.new(boy_param)
    @boy.save
    redirect_to @boy
  end

  def show
    #@boy = Boy.find(params[:id])
  end

  def edit
    #@boy = Boy.find(params[:id])
  end

  def update
    #@boy = Boy.find(params[:id])
    @boy.update(boy_param)
    redirect_to boys_path
  end

  def destroy
    #@boy =Boy.find(params[:id])
    @boy.destroy
    redirect_to boys_path
  end

  private
  def boy_param
    params.require(:boy).permit(:name, :number)
  end

  def find_by_id
    @boy = Boy.find(params[:id])
  end
end
