class MessagesController < ApplicationController

  def index
    comments = Message.all
    render json: comments.to_json
  end

    def create 
        comment = Message.create(comment_params)
        render json: comment
    end

    def show
        comment = Message.find_by({id: params[:id]})
        # if message
            render json: comment.to_json
        # else
            # render json: { "Your partner is in another castle"}
        # end 
    end

private

    def comment_params
        params.require(:comment).permit(:name, :email, :comment)
    end

    
end
