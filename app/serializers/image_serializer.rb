class ImageSerializer < ActiveModel::Serializer
  attributes :id, :og_language, :input, :tr_language,:output
  
end
