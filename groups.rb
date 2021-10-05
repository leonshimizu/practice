# Create a program that puts your class into groups! Have the program request the user to enter each student’s name. Assume the classroom has an even number of students, so there are only groups of two.
# Refactor the program to take an odd or even number of students. If odd, one group should have three students.


puts "Enter the names of everyone in your class and I'll put them into groups of 2 - Please type 'Done' when finished:"

students = []

while true
  student = gets.chomp
  students << student
  if student.downcase == "done"
    students.delete_at(-1)
    break
  end
end

p students

# questions 
# - is there a way to create an infinite amount of new arrays? The way I'm thinking of doing it is by creating a set amount of empty arrays (ex. 10) and then putting 2 people into a group and then if that group has 2 people, then go to the next one and so on
# - or is there a different way to store all the different groups of students?