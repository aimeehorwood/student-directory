def interactive_menu
  students = []
  loop do
    #1 print the menu and add the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"  #9 because we'll be adding more items
    #2 read the input and save it into a variable
    selection = gets.chomp
    #3 do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit #this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end

def input_students
  cohorts = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  puts "Please enter the name of student and the month they started"
  puts "To finish, just hit return twice"

  students = []

  name = gets.strip.capitalize
  cohort = gets.strip.capitalize

  while !name.empty?
    if cohort.empty?
      cohort = "November"
    end
    until cohorts.include?(cohort)
      puts "Please try again"
      cohort = gets.strip.capitalize
    end
    students << { name: name, cohort: cohort.to_sym }
    if students.count == 1
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end

    name = gets.strip.capitalize
    cohort = gets.strip.capitalize
  end

  students
end

def print_header
  puts "The Students of Villains Academy".center(69)
  puts "-----------------------".center(69, "~")
end

def print_by_group(students)
  cohorts = students.map { |student| student[:cohort] }.uniq
  cohorts.each do |cohort|
    puts "Students in #{cohort} cohort:".center(69)
    students.each do |student|
      if student[:cohort] == cohort
        puts "#{student[:name]} (#{student[:cohort]}) cohort"
      else
      end
    end
  end
end

def print_footer(students)
  if students.length == 1
    puts "\n Overall, we have #{students.count} great student".center(69)
  elsif students.length > 1
    puts "\n Overall, we have #{students.count} great students".center(69)
  else
    puts "\n There are no students enrolled at the Villains Academy".center(69)
  end
end

interactive_menu