class RepliesController < ApplicationController

def create

  @comicbook = Comicbook.find(params[:comicbook_id])
   debugger
  @review = @comicbook.reviews.find(params[:review_id])
  @reply = @review.replies.create(reply_params)
  render json: @reply
end

private
def reply_params
  params.permit(:body,:publisher_id)
end

end
