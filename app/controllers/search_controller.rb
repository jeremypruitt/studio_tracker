class SearchController < ApplicationController
  def index
    @results = ThinkingSphinx::Search.search params[:search][:query]
  end
end
