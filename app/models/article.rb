# app/models/article.rb
class Article < ApplicationRecord
    has_many :article_tags
    has_many :tags, through: :article_tags
  end
  
  # app/models/article_tag.rb
  class ArticleTag < ApplicationRecord
    belongs_to :article
    belongs_to :tag
  end
  
  # app/models/tag.rb
  class Tag < ApplicationRecord
    has_many :article_tags
    has_many :articles, through: :article_tags
  end