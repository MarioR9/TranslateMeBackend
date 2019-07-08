require_relative '../../../../inventory.rb'
require "json"
require "ibm_watson/visual_recognition_v3"
require "ibm_watson/language_translator_v3"
include IBMWatson

class Api::V1::CategoriesController < ApplicationController
    
    def index
        
        render json:Category.all
    end
    
    def findCategory
        @cate = Category.find(params[:cateId])
        render json: @cate.images
    end
    
    def findCategories
      
        user = User.all.find(params[:userId])
        categories = user.categories
        render json: categories
    end

    def dupCategories
        if User.find(params[:userId]).categories.exists?(params[:cateId].to_i)
            render json: {message: "Included Category"}
        else
        counter = 0
        copiedCate = Category.find(params[:cateId].to_i).clone
      
        copiedCate.user_id = params[:userId]
        copiedCate.save
        cateImg = Category.find(params[:cateId].to_i).images
        while counter < cateImg.length do
           
            counter +=1
            Image.create(input: cateImg[counter].input, tarlanguage: cateImg[counter].tarlanguage, url: cateImg[counter].url, category_id: copiedCate.id)
            break
        end

        user = User.find(params[:userId])  
        categories = user.categories    
        render json: {user: user, categoris: categories}
        
        end
    end

    def create
      
        Category.create(title: params[:title], language: params[:language], user_id: params[:userId], url: params[:url])
        user = User.find(params[:userId])
       
        if user 
            categories = user.categories
            render json: {user: user, categories: categories} 
        else
            render json: {message: "not an user"}
        end
        
    end
    
    def visualRecognition 
      
        visual_recognition = VisualRecognitionV3.new(
            version: VISUAL_VERSION,
            iam_apikey: VISUAL_KEY
          )
          url= params[:imgUrl]
          classes = visual_recognition.classify({url: url})
          result = classes.result
         
          @hashOfResults = result.first[1][0].first[1].first["classes"].select { |hash| hash["score"] >=  0.5}
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
