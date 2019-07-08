
class Api::V1::UsersController < ApplicationController

    def index 
        
        render json: User.all, include: '**'
    
    end 
 
    def create
      
       user = User.create(username: params[:username], password: params[:password])
       
        if user 
                payload = {user_id: user.id}
                token = encode(payload)
                categories = user.categories
        
                render json: {user: user, token: token, categories: categories } 
        end
       
    end

    def login 
       
        user = User.all.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
                payload = {user_id: user.id}
                token = encode(payload)
                categories = user.categories
            render json: {user: user, token: token, categories: categories } 
        else
             render json: {message: "not an user"}
         
        end
    end

    def authenticate
      
        token = request.headers["Authentication"].split(" ")[1]
        payload = decode(token)
        @user = User.find(payload["user_id"])
          render json: @user 
    end 


end
