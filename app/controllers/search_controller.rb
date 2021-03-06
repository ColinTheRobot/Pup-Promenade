class SearchController < ApplicationController

  def index
    @owner = current_owner
    @neighborhoods = Neighborhood.where(boro_id: @owner.boro_id)
    @results = []
  end

  def results
    # this will call a module that will return results
    @results = SearchResults.new(search_params)
    # owner and neighborhoods and required for render
    @owner = current_owner
    @neighborhoods = Neighborhood.where(boro_id: @owner.boro_id)
  end


  private

  def search_params
    params.permit(neighborhoods: [])
  end

end
