class PostsController < ApplicationController
    before_action :check_for_login
  
    def new
      @post = Post.new
    end
  
    def create
        post = Post.create post_params
        post.date_posted = Time.now
        post.save
        post_redirect_choice(post, post.article_type)
    end

    def edit
        @post = Post.find params[:id]
        @article_name = case @post.article_type
        when "fighter"
            @post.fighter.name
        when "special"
            @post.special.name
        when "game"
            @post.game.name
        end
    end
    
    def update
        post = Post.find params[:id]
        post.update post_params
        post_redirect_choice(post, post.article_type)
    end
  
    def destroy
      @post = Post.find params[:id]
      @post.destroy
      post_redirect_choice(@post, @post.article_type)
    end
  
    private
    def post_params
      params.require(:post).permit(:content, :image, :user_id, :fighter_id, :game_id, :special_id, :article_type)
    end
    
    def post_redirect_choice post_object, article_type
        case article_type
        when "fighter"
            redirect_to post_object.fighter
        when "game"
            redirect_to post_object.game
        when "special"
            redirect_to post_object.special
        end
    end
  end