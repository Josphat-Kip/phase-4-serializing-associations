# app/serializers/article_serializer.rb
class ArticleSerializer < ActiveModel::Serializer
    attributes :id, :title, :author, :content
  
    has_many :tags
  end