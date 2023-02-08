class AuthorController < ApplicationController
    skip_before_action :verify_authenticity_token
    def show
       const=Author.all
       render json: const
    end
    def personal
        const=Author.find_by(params[:id]);
        if(const!=nil)
        render json: const
        else
        render html: "No such author exist"   
        end     
    end
    def create
        author=Author.create(name: params[:name],email: params[:email],phone: params[:phone]);
        render json: author;
    end
    def delete
        const=Author.find_by(params[:id]);
        if(const!=nil)     
        const.destroy
        else
        render html: "I am on the verge of deleting"     
        end   
    end
end
