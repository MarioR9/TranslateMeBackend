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
          result = classes.result
         
          @hashOfResults = result.first[1][0].first[1].first["classes"].select { |hash| hash["score"] >=  0.9 }
          @arryOfResults = @hashOfResults.map {|result| result["class"]}
        if params[:oglanguage] == "en"
            render json: {result: classes.result, arrOfRes: @arryOfResults}
        else
            arr=[]
            i = 0
            while i < @arryOfResults.length do
            language_translator = LanguageTranslatorV3.new(
                version: TRANSLATE_VERSION,
                iam_apikey: TRANSLATE_KEY  
                )
                
            translation = language_translator.translate(
                text: @arryOfResults[i],
                model_id: "en-#{params[:oglanguage]}"
                )
                arr.push(translation.result)
                i += 1
            end
            arr
            
            render json: {result: classes.result, arrOfRes: @arryOfResults ,translation: arr}
         end        
    end


    def translate
      
        language_translator = LanguageTranslatorV3.new(
            version: TRANSLATE_VERSION,
            iam_apikey: TRANSLATE_KEY  
            )
        translation = language_translator.translate(
             text: params[:selectedWord],
             model_id: "#{params[:oglanguage]}-#{params[:tglanguage]}"
             )
             render json: {translation: translation.result}
          
       
    end

end
