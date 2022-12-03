class SearchArticle < ApplicationRecord
  validates :title, presence: true
end
