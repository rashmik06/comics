class ComicbooksController < ApplicationController
	
	   def index

     @comicbooks = Comicbook.paginate(page: params[:page], per_page: 2)

     render json: @comicbooks,meta: {
           :current_page => @comicbooks.current_page,
         :per_page => @comicbooks.per_page,
         :total_entries => @comicbooks.total_entries,
         :previous_page => @comicbooks.previous_page,
         :next_page => @comicbooks.next_page
         },adapter: :json
    end

    def create
        @comicbook = Comicbook.create(comicbook_params)
        render json: @comicbook
    end

    def edit
        @comicbook = Comicbook.find(params[:id])
        if @comicbook.save
            render json: @comicbook
        end

    end


    def show
      @comicbook = Comicbook.find(params[:id])
      render json: @comicbook,serializer: ComicbookSerializer
       #render json: {data: @comicbook, image: rails_blob_url(@comicbook.image,disposition: "attachment")}
    end 

    def update
      @comicbook = Comicbook.find(params[:id])
      decoded_data = Base64.decode64(params[:comicbook][:image].split(',')[1])
        @comicbook.image = { 
        io: StringIO.new(decoded_data),
         content_type: 'image/jpeg',
        filename: 'image.jpg'
        }
        @comicbook.save
      @comicbook.update(comicbook_params)
      render json: @comicbook
   end

   def destroy
    @comicbook = Comicbook.find(params[:id])
    @comicbook.destroy
    render json: @comicbook
   end 

   def search
    
      @comicbook = Comicbook.where("title LIKE ?", "%#{params[:query]}%")
  
      render json: @comicbook

   end

   

   def publisher_commic
     @comicbook = Comicbook.where(publisher_id: params[:publisher_id])
      render json: @comicbook
   end


   private
   def comicbook_params
      params.require(:comicbook).permit(:title, :description,:publisher_id, :number, :artist, :writer)
   end

end
