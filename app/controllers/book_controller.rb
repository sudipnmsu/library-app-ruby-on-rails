class BookController < ApplicationController

    layout 'base'
    
	def list
		@books = Book.all
	end

    def show
    	@book = Book.find(params[:id])
    end
   
    def new
    	@book = Book.new
   		@authors = Author.all
    end
   
    def create
    	@book = Book.new(book_params)
	
	    if @book.save
	    	redirect_to :action => 'list'
	    else
	    	@authors = Author.all
	    	render :action => 'new'
	    end
    end

    def book_params
    	params.require(:books).permit(:title, :author_id)
    end
   
    def edit
    	@book = Book.find(params[:id])
   		@authors = Author.all
    end
   
    def update
    	@book = Book.find(params[:id])
	
   		if @book.update(book_param)
      		redirect_to :action => 'show', :id => @book
   		else
      		@authors = Author.all
      		render :action => 'edit'
   		end
    end

    def book_param
    	params.require(:book).permit(:title, :author_id)
    end
   
    def delete
    	Book.find(params[:id]).destroy
   		redirect_to :action => 'list'
    end

    def show_books
    	@books = Book.find(params[:author_id])
   	end

end
