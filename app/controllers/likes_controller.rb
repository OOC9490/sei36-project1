class LikesController < ApplicationController
    before_action :find_post
    before_action :find_like, only: [:destroy]

    def create
        @post.likes.create(user_id: @current_user.id)
        redirect_choice @post, @post.article_type
    end

    def destroy
        @like.destroy
        redirect_choice @post, @post.article_type
    end

    private
    def find_post
        @post = Post.find(params[:post_id])
    end

    def find_like
        @like = @post.likes.find_by(post_id: params[:post_id])
    end

    def redirect_choice post_object, article_type
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
