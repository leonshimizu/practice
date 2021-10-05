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

# p students

i = 0
students.length.times do
  if students[i + 1] != nil
    p "Group: #{students[i]} and #{students[i + 1]}"
  end
  i += 2
end