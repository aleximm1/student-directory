# make a student array
#
# students = [
#   {name: "Dr. Hannibal Lecter", cohort: :november},
#   {name: "Darth Vader", cohort: :november},
#   {name: "Nurse Ratched", cohort: :january},
#   {name: "Michael Corleone", cohort: :november},
#   {name: "Alex DeLarge", cohort: :november},
#   {name: "The Wicked Witch of the West", cohort: :november},
#   {name: "Terminator", cohort: :november},
#   {name: "Freddy Krueger", cohort: :january},
#   {name: "The Joker", cohort: :january},
#   {name: "Joffrey Baratheon", cohort: :january},
#   {name: "Norman Bates", cohort: :january},
# ]
  @students = []

def print_header
  # Used strin.center to put the header in the middle of the terminal (exercise 6)
  puts "The students of Villains Academy".center(80)
  puts "--".center(80, '-')
end
# print the list of students each on a new line
def print_students_list
  # sorting the students by their cohort (exercise 8)
  # students = students.sort_by {|name, cohort| cohort}
  number = 0
  # sorts the students by cohort (exercise 8)
  @students = @students.sort_by {|student| student[:cohort]}
  #Replacement for the each() method using a while loop (exercise 4)
  while number < @students.length
  #students.each do |student|
    # tracks the number of times the do loop has been run (exercise 1 & 4)
    student = @students[number]
    number = number + 1
    # sets the variable to the letter being look for at the start of the names (exercise 2)
    #letter = "D"
    # checks to see if the current name being checked in the students array starts with the letter from the line before this one (exercise 2)
    #if student[:name][0] == letter
      # only prints the students info if their name is shorter than 12 characters (exercise 3)
      #if student[:name].length <= 12
        # Some changes from exercise 5 printing out the extra information (exercise 5)
        puts "#{number}. #{student[:name]} (#{student[:cohort]} cohort)."# Hobbies: #{student[:hobbies]}, Place of Birth: #{student[:country]}, Height: #{student[:height]}"
      #end
    #end
  end
end
# print the total number of students
def print_footer
      # changes the message if there is only on student to write student instead of students (exercise 9)
  if @students.count == 1
    puts "Overall, we have #{@students.count} great student"
  else
    puts "Overall, we have #{@students.count} great students"
  end
end

def input_students
  puts "Please enter the information of the students"
  puts "To finish, just hit return twice"
  # get the first name
  puts "Name:"
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the ability for people to enter their cohort (exercise 7)
    puts "Cohort:"
    cohort = gets.chomp
    if cohort = ""
      cohort = "november"
    end
    # add more info to the students (exercise 5)
    puts "Hobbies:"
    hobbies = gets.chomp
    puts "Country of Birth:"
    country = gets.chomp
    puts "Height:"
    height = gets.chomp
    # add the student hash to the array
    @students << {name: name, cohort: cohort, hobbies: hobbies, country: country, height: height}
    # changes the message if there is only on student to write student instead of students (exercise 9)
    if @students.count == 1
      puts "Now we have #{@students.count} student"
    else
      puts "Now we have #{@students.count} students"
    end
    # get another name from the user
    puts "Name:"
    name = gets.chomp
  end
end

def print_menu
  puts "1. Input students"
  puts "2. Show students"
  puts "3. Save the list to students.csv"
  puts "9. Exit"
end

def show_students
  # if statement so that it only prints everything out if the students array is no empty (exercise 12)
  if !@students.empty?
    print_header
    print_students_list
    print_footer
  else
    puts "There are no students"
  end
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
        show_students
    when "3"
      save_students
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def save_students
  #open the file for writing
  file = File.open("students.csv", "w")
  #iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort], student[:hobbies], student[:country], student[:height]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

# call the methods
interactive_menu
