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
puts "The students of Villains Academy"
#print the list of students each on a new line
puts "--------------"
students.each do |student|
  puts student
end
#print the total number of students
# it's important that print() doesn't add new line characters
puts "Overall, we have #{students.count} great students"
