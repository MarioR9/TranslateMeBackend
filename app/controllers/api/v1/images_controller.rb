
class Api::V1::ImagesController < ApplicationController

    def index 
        render json: Image.all
    end

   def create 
    
    Image.create(input: params[:input], tarlanguage: params[:tarlanguage], category_id: params[:cateId], url: params[:imgUrl])
    cate = Category.find(params[:cateId])
    render json: cate.images
   end 

   def destroy
        
    Image.find(params[:id]).delete
    user = User.find(params[:userId])  
    categories = user.categories    
    render json: {user: user, categories: categories}
     
  end
  
end
