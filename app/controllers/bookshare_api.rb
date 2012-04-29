class BookshareAPI
  include HTTParty
  base_uri "https://api.bookshare.org"
  #format :json

  def initialize(api_key = "6rzgxdwk94kqw4p7zf2chv6v")
  	@api_key = api_key
  end

  def advanced_search(search_parameters)

  	options_segments = ""

  	case true
  		when search_parameters.title.present? && search_parameters.author.present?
  			options_segments << "/title/#{search_parameters.title}" if search_parameters.title.present?
		  	options_segments << "/author/#{search_parameters.author}" if search_parameters.author.present?
		  	options_segments << "/page/#{search_parameters.page}"
		  	options_segments << "/limit/#{search_parameters.limit}"
  			uri = "/book/search/#{search_parameters.title} #{search_parameters.author} /format/xml?api_key=#{@api_key}"
  		when search_parameters.full_text.present?
  			options_segments << "/#{search_parameters.full_text}"
  			options_segments << "/page/#{search_parameters.page}"
		  	options_segments << "/limit/#{search_parameters.limit}"
  			uri = "/book/searchFTS#{options_segments}/format/xml?api_key=#{@api_key}"
  		else
  			options_segments << "/title/#{search_parameters.title}" if search_parameters.title.present?
		  	options_segments << "/author/#{search_parameters.author}" if search_parameters.author.present?
		  	options_segments << "/grade/#{search_parameters.grade}" if search_parameters.grade.present?
		  	options_segments << "/page/#{search_parameters.page}"
		  	options_segments << "/limit/#{search_parameters.limit}"
		  	uri = "/book/search#{options_segments}/format/xml?api_key=#{@api_key}"

  	end

    self.class.get(URI::encode(uri))

  end
end

#https://api.bookshare.org/book/search/author/king/page/1/limit/100/format/xml?api_key=6rzgxdwk94kqw4p7zf2chv6v