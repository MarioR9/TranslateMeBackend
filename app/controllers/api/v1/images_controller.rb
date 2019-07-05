
class Api::V1::ImagesController < ApplicationController

    def index 
        render json: Image.all
    end

   def create 
    byebug
    Image.create(input: params[:input], tarlanguage: params[:tarlanguage], category_id: params[:cateId], url: params[:imgUrl])
    cate = Category.all
    render json: cate
   end 

end
