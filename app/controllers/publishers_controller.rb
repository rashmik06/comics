class PublishersController < ApplicationController
	
	
	# def index
 #         @publishers = Publisher.paginate(page: params[:page], per_page: 3)
 #        publisher = []
 #        byebug
 #        @publishers.each do |pub|
 #        publisher << {id: pub.id, name: pub.name, image: rails_blob_url(pub.image,disposition: "attachment")}
 #            #publisher << {data: pub, image: rails_blob_url(pub.image,disposition: "attachment")}
 #        end
 #        render json: { data: publisher, meta: {
 #          :current_page => @publishers.current_page,
 #        :per_page => @publishers.per_page,
 #        :total_entries => @publishers.total_entries,
 #        :previous_page => @publishers.previous_page,
 #        :next_page => @publishers.next_page
 #        }},each_serializer: PublisherSerializer 
 #   end

      def index
        @publishers = Publisher.paginate(page: params[:page], per_page: 3)
        render json: @publishers, meta: {:current_page => @publishers.current_page,:per_page => @publishers.per_page,:total_entries => @publishers.total_entries,:previous_page => @publishers.previous_page,:next_page => @publishers.next_page}, adapter: :json

      end


    def create
    	
        @publisher = Publisher.create(publisher_params)
        render json: @publisher
    end

   

    def edit
        @publisher = Publisher.find(params[:id])
        if @publisher.save
            render json: @publisher 
        end

    end


    def show
        @publisher = Publisher.find(params[:id])
        render json: @publisher #{id: @publisher.id, name: @publisher.name, image: rails_blob_url(@publisher.image,disposition: "attachment")}
    end 

    def update
        @publisher = Publisher.find(params[:id])
   
        decoded_data = Base64.decode64(params[:publisher][:image].split(',')[1])
        @publisher.image = { 
        io: StringIO.new(decoded_data),
         content_type: 'image/jpeg',
        filename: 'image.jpg'
        }
         @publisher.save
         @publisher.update(publisher_params)
        render json: @publisher
     end

    def destroy
        @publisher = Publisher.find(params[:id])
       
        @publisher.destroy
        render json: @publisher
     end 

   private
   def publisher_params
        params.require(:publisher).permit(:name, comicbooks_attributes: [ :title, :description,:publisher_id,:number,:artist,:writer])
   end

end



