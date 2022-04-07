require_relative './app'

def menu
  puts
  puts 'Please choose an option by entering a number:'
  
  options = ['List all books', 'List all people', 'Create a person', 'Create a book', 'Create a rental',
    'List all rentals for a given person id', 'Exit']
    
    options.each_with_index do |option, index|
      puts "#{index + 1} - #{option}"
    end
  end
  
  def main
    app = App.new
    
    puts 'Welcome to School Library App!'
    while menu
      selected = gets.chomp.to_i - 1
    case selected
    when 0
      app.list_books
    when 1
      app.list_people

    when 2
      print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
      education = gets.chomp.to_i
      print 'Age: '
      age = gets.chomp.to_i
      print 'Name: '
      name = gets.chomp

      if education == 1
        print 'Has parent permission? [Y/N]: '
        parent_permission = gets.chomp
        app.create_student(age, name, parent_permission)

      else
        print 'Specialization: '
        specialization = gets.chomp
        app.create_teacher(age, name, specialization)
      end
      puts 'Person created successfully'

    when 3
      print 'Title: '
      title = gets.chomp
      print 'Author: '
      author = gets.chomp
      app.create_book(title, author)
      puts 'Book created successfully'

    when 6
      break
    end
  end
end
main
