class BookshareAPI
  include HTTParty
  base_uri "https://api.bookshare.org"
  #format :json

  def initialize(api_key = "6rzgxdwk94kqw4p7zf2chv6v")
  	@api_key = api_key
  end

  def by_keyword
  	mm = SearchParameters.new
    self.class.get("/book/search/author/king/page/6/limit/10/format/xml?api_key=#{@api_key}")

  end
end

#https://api.bookshare.org/book/search/author/king/page/1/limit/100/format/xml?api_key=6rzgxdwk94kqw4p7zf2chv6v