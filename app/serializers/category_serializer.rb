class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :language,:url
  has_many :images
end
