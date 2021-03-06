class SpecialsController < ApplicationController
  before_action :check_for_login, :only => [:new, :edit, :update]
  def index
    @fighters = Fighter.all
    @specials = Special.all
  end

  def new
    @special = Special.new
  end

  def create
    special = Special.create special_params
    special.entry_created = Time.zone.now
    special.save
    redirect_to special
  end

  def edit
    @special = Special.find params[:id]
  end

  def update
    special = Special.find params[:id]
    special.update special_params
    redirect_to special
  end

  def show
    @special = Special.find params[:id]
    @posts = @special.posts.sort
  end

  def destroy
    special = Special.find params[:id]
    special.destroy
    redirect_to specials_path
  end

  private
  def special_params
    params.require(:special).permit :name, :input_direction, :attack_type, :damage_dealt, :preview, :fighter_id, :entry_created
  end
end
