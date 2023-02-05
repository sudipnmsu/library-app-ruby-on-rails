class AuthorController < ApplicationController

    layout 'base'
    
	def list
		@authors = Author.all
	end

    def show
    	@author = Author.find(params[:id])
    end
   
    def new
    	@author = Author.new
    end
   
    def create
    	@author = Author.new(author_params)
	
	    if @author.save
	    	redirect_to :action => 'list'
	    end
    end

    def author_params
    	params.require(:authors).permit(:name)
    end
   
    def edit
    	@author = Author.find(params[:id])
    end
   
    def update
    	@author = Author.find(params[:id])
	
   		if @author.update(author_param)
      		redirect_to :action => 'show', :id => @author
   		end
    end

    def author_param
    	params.require(:author).permit(:name)
    end
   
    def delete
    	Author.find(params[:id]).destroy
   		redirect_to :action => 'list'
    end

    def show_books
    	@author = Author.find(params[:id])
   	end

end
