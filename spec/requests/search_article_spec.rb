require 'rails_helper'

RSpec.describe 'SearchArticles', type: :request do
  before(:all) do
    @article = Article.create(title: 'Article test',
                              body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
  end
  describe '- test for SearchArticles requests' do
    it 'search_articles#index - should response status success' do
      get search_articles_path
      expect(response).to have_http_status(:success)
    end

    it 'search_articles#new - should response status create or (200)' do
      get '/search_articles'
      SearchArticle.create(title: @article.title)
      expect(response).to have_http_status(200)
    end
  end
end
