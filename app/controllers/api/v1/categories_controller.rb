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
    # byebug
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
        i = 0
        copiedCate = Category.find(params[:cateId].to_i)
         
            
        newCate = Category.create(title: copiedCate.title, language: copiedCate.language, user_id: params[:userId], url: copiedCate.url)
        cateImgLength = Category.find(params[:cateId].to_i).images.length
        while i < cateImgLength do
          
            Image.create(input: Category.find(params[:cateId].to_i).images[i].input, tarlanguage: Category.find(params[:cateId].to_i).images[i].tarlanguage, url: Category.find(params[:cateId].to_i).images[i].url, category_id: newCate.id)
            i += 1     
        end

        user = User.find(params[:userId])  
        payload = {user_id: user.id}
        token = encode(payload)
        lastCate = user.categories.last 
        categories = user.categories    
        render json: {user: user, categories: categories, token: token, newDup: lastCate}
        
        end
    end

    def create
      
        Category.create(title: params[:title], language: params[:language], user_id: params[:userId], url: params[:url])
        user = User.find(params[:userId])
       
        if user 
            payload = {user_id: user.id}
            token = encode(payload)
            lastCate = user.categories.last 
            categories = user.categories
            render json: {user: user, categories: categories, token: token,newDup: lastCate} 
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

    def findModel
        # byebug
        language_translator = LanguageTranslatorV3.new(
            version: TRANSLATE_VERSION,
            iam_apikey: TRANSLATE_KEY
          )
          models = language_translator.list_models(source: params[:oglanguage]["value"])
          render json: {models: models.result}
          
          
          
    end

    def destroy
        
        Category.find(params[:id]).delete
        user = User.find(params[:userId])  
        categories = user.categories    
        render json: {user: user, categories: categories}
         
      end
    
end
