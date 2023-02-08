class BookController < ApplicationController
    skip_before_action :verify_authenticity_token
    def show
        book=Book.all;
        render json: book
    end
    def perbook
        book=Book.find_by(params[:id]);
        render json: book
    end
    def create
        book=Book.create(book_name: params[:book_name],author_id: params[:author_id],published_at: params[:published_at]);
        if((book.valid?)==false)
         render html: "No such author exist"
        elsif
         render json: book 
        end
    end        
    def delete
        book=Book.find_by(params[:id]);
        const=params[:id];
        if(book!=nil)
        book.destroy;
        else
        render html: "No such book exist" 
        end
     end        
end
