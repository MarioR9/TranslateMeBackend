
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
end
