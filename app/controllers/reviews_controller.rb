class ReviewsController < ApplicationController
  

  def create
    @comicbook = Comicbook.find(params[:comicbook_id])

    @review = @comicbook.reviews.create(review_params)
    render json: @review
  end

  def show
    
    @comicbook = Comicbook.find(params[:comicbook_id])
    @review = @comicbook.reviews.find(params[:id])
    render json: @review
  end

  def update
    @comicbook = Comicbook.find(params[:comicbook_id])
    
    @review = @comicbook.reviews.find(params[:id])
    @review.update(review_params)
    render json: @review
  end

  def destroy
    debugger
    @comicbook = Comicbook.find(params[:comicbook_id])
    @review = @comicbook.reviews.find(params[:id])
    @review.destroy
    render json: @review
  end

  #def like_review
    #@comicbook = Comicbook.find(params[:comicbook_id])
    #@review = @comicbook.reviews.find(params[:id])
    #like = @review.like
    #if like == nil
      #@review.like = 1
    #else
     #@review.like = @review.like + 1
   #end
   #@review.save
   #render json: @review
  #end

  private
    def review_params
      #params.require(:review).permit(:name, :body,:email)
      params.permit(:name, :body,:email) #works for update
    end
end
