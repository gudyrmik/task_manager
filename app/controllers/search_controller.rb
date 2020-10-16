class SearchController < ApplicationController

  def result
    @search_results = PgSearch.multisearch(params[:query])
  end

end
