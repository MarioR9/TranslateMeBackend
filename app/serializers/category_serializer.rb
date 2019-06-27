class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :language
  has_many :images
end
