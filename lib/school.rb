require 'pry'

class School

	attr_accessor :name, :roster

	# has an empty roster when initialized
	def initialize(name)
		@name = name
		@roster = roster

		roster ||= @roster = {}
	end


	'''
	is able to add a student
    is able to add multiple students to a class (grade)
    is able to add students to different grades
	'''
	def add_student(student_name, grade_level)
		if @roster.has_key?(grade_level) == false
			roster[grade_level] = []
			@roster[grade_level] = [student_name]
		else
			@roster[grade_level] << student_name
		end
	end


	# is able to retreive students from a grade
	def grade(grade_level)
		@roster[grade_level]
	end


	# is able to sort the students
	def sort
		@roster.map do |grade, student|
			@roster[grade].sort!
		end
		@roster
	end

end

# school = School.new("Bayside High")
# school.add_student("Dick Cheney", 9)

# "y"

