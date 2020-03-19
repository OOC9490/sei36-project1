class PagesController < ApplicationController
  def index
  end

  def search
    @category = special_params[:category]
    @search_string = params[:search]
    @search_ids = case @category
    when "fighters"
      Fighter.where("name LIKE ?","%#{@search_string.downcase.capitalize}%").pluck(:id)
    when "specials"
      Special.where("name LIKE ?","%#{@search_string.downcase.capitalize}%").pluck(:id)
    when "games"
      Game.where("name LIKE ?","%#{@search_string.downcase.capitalize}%").pluck(:id)
    end
    @potential_results = case @category
    when "fighters"
      Fighter.all
    when "specials"
      Special.all
    when "games"
      Game.all
    end
    if @search_ids.size == 0
      flash[:error] = "No results were found for your search!"
      redirect_to root_path
    end
  end

  private
  def special_params
    params.require(:searches).permit :category
  end
end