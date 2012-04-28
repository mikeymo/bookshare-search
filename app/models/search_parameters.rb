

class SearchParameters

	attr_accessor :title, :author, :isbn, :publisher, :synopsis, :full_text, :books_to_search, :language, :grade
	attr_accessor :qualities_0, :qualities_1, :qualities_2, :qualities_3

	def initialize
		@books_to_search = 'ALL'
		@language = 'ENGLISH'
		@grade = ''
		@qualities_0 = '1'
		@qualities_1 = '1'
		@qualities_2 = '0'
		@qualities_3 = '0'
	end


	# mass assignment method
	def update_attributes(values)
		values.each do |k, v|
			send("#{k}=", v) if self.respond_to?("#{k}=")
		end
	end

	def quality_options
		[['All Books','ALL'],['Books Available Worldwide', 'WORLDWIDE'],['Freely Available Books','FREELY_AVAILABLE'],['NIMAC Books','NIMAC']]
	end

	def language_options
		[["Any language", ""], ["Afrikaans", "AFRIKANS"], ["Arabic", "ARABIC"], ["English UK", "ENGLISH_GB"], ["English US", "ENGLISH"], ["French", "FRENCH"], ["German", "GERMAN"], ["Hindi", "HINDI"], ["Italian", "ITALIAN"], ["Japanese", "JAPANESE"], ["Latin", "LATIN"], ["Portuguese", "PORTUGUESE"], ["Russian", "RUSSIAN"], ["Spanish", "SPANISH"], ["Swedish", "SWEDISH"], ["Tamil", "TAMIL"]] 
	end

	def grade_options
		[["All Grades", ""], ["Pre-Kindergarten", "PRE_KINDERGARTEN"], ["Kindergarten", "KINDERGARTEN"], ["1", "FIRST_GRADE"], ["2", "SECOND_GRADE"], ["3", "THIRD_GRADE"], ["4", "FOURTH_GRADE"], ["5", "FIFTH_GRADE"], ["6", "SIXTH_GRADE"], ["7", "SEVENTH_GRADE"], ["8", "EIGHTH_GRADE"], ["9", "NINTH_GRADE"], ["10", "TENTH_GRADE"], ["11", "ELEVENTH_GRADE"], ["12", "TWELFTH_GRADE"], ["College Freshman", "COLLEGE_FRESHMAN"], ["College Sophomore", "COLLEGE_SOPHOMORE"], ["College Junior", "COLLEGE_JUNIOR"], ["College Senior", "COLLEGE_SENIOR"], ["Graduate Student", "GRADUATE_STUDENT"], ["Adult Education", "ADULT_ED"]]
	end
end