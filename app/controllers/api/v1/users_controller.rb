
require_relative '../../../../inventory.rb'

require "json"
require "ibm_watson/visual_recognition_v3"
require "ibm_watson/language_translator_v3"
include IBMWatson

class Api::V1::UsersController < ApplicationController

    def index 
        
        render json: User.all, include: '**'
    end 
    def create 
        visual_recognition = VisualRecognitionV3.new(
            version: VISUAL_VERSION,
            iam_apikey: VISUAL_KEY
          )
          url= params[:image]
          classes = visual_recognition.classify({url: url})   
        render json: { result: classes.result}

    end

    def create
        byebug
        newUser = User.create(username: params[:username])
        render newUser
    end

    def login 
        user = User.all.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            payload = {user_id: user.id}
            token = encode(payload)
            byebug
             render json: {user: user, token: token} 
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
