class CommentsController < ApplicationController
    def create
        @comment = Comment.create(comment_params)
        redirect_to post_path(@comment.post)
    end

    private

    def comment_params
        params.require(:comment).permit(:content, :user_id, :post_id)
    end
end
