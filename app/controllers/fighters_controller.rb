class FightersController < ApplicationController
  def index
    @fighters = Fighter.all
  end

  def new
    @fighter = Fighter.new
  end

  def create
    fighter = Fighter.create fighter_params
    redirect_to fighter
  end

  def edit
    @fighter = Fighter.find params[:id]
  end

  def update
    fighter = Fighter.find params[:id]
    fighter.update fighter_params
    redirect_to fighter
  end

  def show
    @fighter = Fighter.find params[:id]
  end

  def destroy
    fighter = Fighter.find params[:id]
    fighter.destroy
    redirect_to fighters_path
  end

  private #not accessible outside of this class
  def fighter_params
    params.require(:fighter).permit :name, :stock_symbol, :availability, :image
  end
end
