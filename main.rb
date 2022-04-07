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
      app.create_person
    when 3
      app.create_book
    when 4
      app.create_rental
    when 5
      app.person_rentals
    when 6
      break
    end
  end
end
main
