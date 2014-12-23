class BoysController < ApplicationControlleri
  def index
    @boys = Boy.all
  end
end
