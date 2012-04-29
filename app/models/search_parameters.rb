

class SearchParameters

	attr_accessor :page, :limit
	attr_accessor :title, :author, :isbn, :publisher, :synopsis, :full_text, :grade
	attr_accessor :qualities_0, :qualities_1, :qualities_2, :qualities_3

	def initialize
		@grade = 'All Grades'
		@page = 1
		@limit = 10
	end


	# mass assignment method
	def update_attributes(values)
		values.each do |k, v|
			send("#{k}=", v) if self.respond_to?("#{k}=")
		end
	end



	def grade_options
		
	end
end