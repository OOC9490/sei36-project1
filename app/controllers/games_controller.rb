class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find params[:id]
    @posts = @game.posts.sort
  end
end
