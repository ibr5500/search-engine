require 'rails_helper'

RSpec.describe Article, type: :model do
  before(:each) do
    @article = Article.create(title: "What is Lorem Ipsum?", body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
  end

  describe 'Tests for Article model validations' do

    it 'test for title validation, if tile nill should not be valid' do
      @article.title = nil
      expect(@article).to_not be_valid
    end

    it 'test for body validation, if tile nill should not be valid' do
      @article.body = nil
      expect(@article).to_not be_valid
    end
  end

end
