class SearchArticlesController < ApplicationController
  def index
    @searched = SearchArticle.all
  end

  def create; end
end
