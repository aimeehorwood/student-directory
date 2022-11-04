def input_students
  cohorts = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  puts "Please enter the name of student and the month they started"
  puts "To finish, just hit return twice"

  students = []

  name = gets.chomp.capitalize
  cohort = gets.chomp.capitalize

  while !name.empty?
    if cohort.empty?
      cohort = "November"
    end
    until cohorts.include?(cohort)
      puts "Please try again"
      cohort = gets.chomp.capitalize
    end
    students << { name: name, cohort: cohort.to_sym }
    if students.count == 1
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end

    name = gets.chomp.capitalize
    cohort = gets.chomp.capitalize
  end

  students
end

def print_header
  puts "The Students of Villains Academy".center(69)
  puts "-----------------------".center(69, "~")
end

def print(students)
  students.each.with_index do |student, index|
    puts "\n #{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "\n Overall, we have #{students.count} great students".center(69)
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

# 8.6 Research how the method center() of the String class works. Use it in your code to make the output beautifully aligned.
# Added method .center(69) and made output more beautiful with spacing and centering.
# puts "The students of Villains Academy".center(69)
#  puts "-----------------------".center(69,'~')

# 8.7 In the input_students method the cohort value is hard-coded. How can you ask for both the name and the cohort? What if one of the values is empty? Can you supply a default value? The input will be given to you as a string? How will you convert it to a symbol? What if the user makes a typo?
#def input_students
#cohorts = ['January','February','March','April','May','June','July','August','September','October','November','December']
#  puts "Please enter the name of student and the month they started"
#  puts "To finish, just hit return twice"

#  students = []

#  name = gets.chomp.capitalize
#  cohort = gets.chomp.capitalize

# while !name.empty? do
#    if cohort.empty?
#      cohort = "November"
#    end
#    until cohorts.include?(cohort)
#      puts "Please try again"
#      cohort = gets.chomp.capitalize
#    end
#    students << {name: name, cohort: cohort.to_sym}
#    if students.count == 1
#      puts "Now we have #{students.count} student"
#    else
#      puts "Now we have #{students.count} students"
#    end  
   
#    name = gets.chomp.capitalize
#    cohort = gets.chomp.capitalize
#  end

#  students
# end
