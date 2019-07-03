require_relative '../../../../inventory.rb'
require "json"
require "ibm_watson/visual_recognition_v3"
require "ibm_watson/language_translator_v3"
include IBMWatson

class Api::V1::CategoriesController < ApplicationController
    
    def index
        render json:Category.all
    end
    
    def visualRecognition 

        visual_recognition = VisualRecognitionV3.new(
            version: VISUAL_VERSION,
            iam_apikey: VISUAL_KEY
          )
          url= params[:imgUrl]
          classes = visual_recognition.classify({url: url})
         
          render json: { result: classes.result}
    end
    def translate
          language_translator = LanguageTranslatorV3.new(
          version: TRANSLATE_VERSION,
          iam_apikey: TRANSLATE_KEY  
          )
          
          translation = language_translator.translate(
          text: "#{params[]}",
          model_id: "en-#{params[:oglanguage]}"
          )
          puts JSON.pretty_generate(translation.result)
    end
end
