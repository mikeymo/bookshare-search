class SearchController < ApplicationController
  def basic (options = {})

  	@search_parameters = SearchParameters.new
  	@search_parameters.update_attributes params

  	# Set Quality checkboxes
  	@search_parameters.qualities_0 = params[:search_parameters][:qualities_0] if params[:search_parameters].present?
  	@search_parameters.qualities_1 = params[:search_parameters][:qualities_1] if params[:search_parameters].present?
  	@search_parameters.qualities_2 = params[:search_parameters][:qualities_2] if params[:search_parameters].present?
  	@search_parameters.qualities_3 = params[:search_parameters][:qualities_3] if params[:search_parameters].present?

  	response = BookshareAPI.new.advanced_search(@search_parameters)

  	

  	@books = response.parsed_response["bookshare"]["book"]["list"]["result"]
  	@response = response.parsed_response["bookshare"]

  end
end
