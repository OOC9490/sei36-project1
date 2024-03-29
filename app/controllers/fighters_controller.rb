class FightersController < ApplicationController
  before_action :check_for_login, :only => [:new, :edit, :update]

  def index
    @fighters = Fighter.all
  end

  def new
    @fighter = Fighter.new
  end

  def create
    fighter = Fighter.create fighter_params
    fighter.entry_created = Time.zone.now
    fighter.save
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
    @posts = @fighter.posts.sort
  end

  def destroy
    fighter = Fighter.find params[:id]
    fighter.destroy
    redirect_to fighters_path
  end

  private
  def fighter_params
    params.require(:fighter).permit(:name, :stock_symbol, :availability, :image, :final_smash, :franchise, :entry_created, game_ids:[])
  end
end
