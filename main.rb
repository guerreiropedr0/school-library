require_relative './app'

def main
  app = App.new()
  puts 'Welcome to School Library App!'
  puts 'Please choose an option by entering a number:'

  options = ['List all books', 'List all people', 'Create a person', 'Create a book', 'Create a rental',
             'List all rentals for a given person id', 'Exit']

  options.each_with_index do |option, index|
    puts "#{index + 1} - #{option}"
  end

  selected = gets.chomp.to_i - 1
  case selected
  when 0
    app.list_books
  when 1
    app.list_people
  when 2
  ## CREATE A PERSON
  when 3
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    app.create_book(title, author)
    puts 'Book created successfully'
  end
end

main()
