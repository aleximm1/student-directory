# make a student array
=begin
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november},
]
=end
def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end
# print the list of students each on a new line
def print(students)
  number = 0
  students.each do |student|
    # tracks the number of times the do loop has been run (exercise 1)
    number = number + 1
    # sets the variable to the letter being look for at the start of the names (exercise 2)
    letter = "D"
    # checks to see if the current name being checked in the students array starts with the letter from the line before this one (exercise 2)
    if student[:name][0] == letter
      # only prints the students info if their name is shorter than 12 characters (exercise 3)
      studentLength = student[:name].length
      if studentLength <= 12
        puts "#{number}. #{student[:name]} (#{student[:cohort]} cohort)"
      end
    end
  end
end
# print the total number of students
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets .chomp
  end
  # return the array of students
  students
end
# call the methods
students = input_students
print_header
print(students)
print_footer(students)
