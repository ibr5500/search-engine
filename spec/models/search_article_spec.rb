require 'rails_helper'

RSpec.describe SearchArticle, type: :model do
  before(:each) do
    @article = Article.create(title: 'What is Lorem Ipsum?',
                              body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.')
    @search = SearchArticle.create(title: @article.title)
  end

  describe 'Tests for SearchArticle model validations' do
    it 'test for title validation, if title nill should not be valid' do
      @search.title = nil
      expect(@search).to_not be_valid
    end
  end
end
