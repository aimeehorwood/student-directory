def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = []

  name = gets.chomp

  while !name.empty?
    students << { name: name, cohort: :november }
    puts "Now we have #{students.count} students"

    name = gets.chomp
  end

  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_loop(students)
  i = 0
  while i < students.length
    puts "#{students[i][:name]} (#{students[i][:cohort]} cohort)"
    i += 1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students

print_header
print_loop(students)
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
