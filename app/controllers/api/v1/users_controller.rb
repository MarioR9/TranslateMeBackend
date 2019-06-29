
require 'tempfile'

        require "json"
        require "ibm_watson/visual_recognition_v3"
        require "ibm_watson/language_translator_v3"

        include IBMWatson

class Api::V1::UsersController < ApplicationController

    def index 
        
        render json: User.all, include: '**'
    end 
    def create 
        byebug

        visual_recognition = VisualRecognitionV3.new(
        version: "2018-03-19",
        iam_apikey: "zuJHfpYtm9gFQZDMLufjdFbWC8FSg121CVLVO9ZWYMRp"
        )

        File.open(params[:files]) do |images_file|
            classes = visual_recognition.classify(
            images_file: images_file
            )    
        render json: { result: classes.result}
        end
    end
end
