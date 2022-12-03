# frozen_string_literal: true

class CreateSearchArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :search_articles do |t|
      t.string :title

      t.timestamps
    end
  end
end
