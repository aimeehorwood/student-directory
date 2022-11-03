def input_students
  puts "Please enter the names and details of students"
  puts "To finish, just hit return twice"

  students = []

  name = gets.chomp

  while !name.empty?
    puts "What are their hobbies?"
    hobbies = gets.chomp
    puts "What is their birth place?"
    birth_place = gets.chomp
    puts "What is their height in cm?"
    height = gets.chomp

    students << { name: name, hobbies: hobbies, birth_place: birth_place, height: height, cohort: :november }
    puts "Now we have #{students.count} students"

    name = gets.chomp
  end

  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each.with_index do |student, index|
    puts " #{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
    puts "They enjoy #{student[:hobbies]},they were born in #{student[:birth_place]} and they are #{student[:height]}cm tall."
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students

print_header
print(students)
print_footer(students)

# 8.1 How can you modify the program to print a number before the name of each student, e.g. "1. Dr. Hannibal Lecter"?
# def print(students)
#   students.each.with_index do |student,index|
#     puts " #{index +1}. #{student[:name]} (#{student[:cohort]} cohort)"
#   end
# end

# 8.2 Modify your program to only print the students whose name begins with a specific letter.
# def print(students)
#  students.each do |student|
#    if student[:name].start_with?("T","t")
#      puts "#{student[:name]} (#{student[:cohort]} cohort)"
#    end
#  end
# end

# 8.3 Modify your program to only print the students whose name is shorter than 12 characters.
# def print(students_shorter_twelve)
#  students_shorter_twelve.each do |student|
#    if student[:name].size < 12
#      puts "#{student[:name]} (#{student[:cohort]} cohort)"
#    end
#  end
# end

# 8.4  Rewrite the each() method that prints all students using while or until control flow methods (Loops).
# def print_loop(students)
#  i = 0
#  while i < students.length
#    puts "#{students[i][:name]} (#{students[i][:cohort]} cohort)"
#    i += 1
#  end
# end

# 8.5 Our code only works with the student name and cohort. Add more information: hobbies, country of birth, height, etc.
# As above and each_with_index amended to puts new information about students
