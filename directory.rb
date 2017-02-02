#make a student array
students = [
  "Dr. Hannibal Lecter"
  "Darth Vader"
  "Nurse Ratched"
  "Michael Corleone"
  "Alex DeLarge"
  "The Wicked Witch of the West"
  "Terminator"
  "Freddy Krueger"
  "The Joker"
  "Joffrey Baratheon"
  "Norman Bates"
]
def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end
#print the list of students each on a new line
def print_names(names)
  names.each do |name|
    puts name
  end
end
#print the total number of students
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
#call the methods
print_header
print_names(students)
print_footer(students)
