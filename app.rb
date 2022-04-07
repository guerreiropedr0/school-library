require './book'

class App
  attr_accessor :books, :people
  def initialize
    @books = []
    @people = []
  end
  
  def list_books
    if @books.length == 0
      puts 'You don\'t have any books'
    else
      @books.each do |book|
        puts "Title: #{book.title}, Author: #{book.author}"
      end
    end
  end

  def list_people
    if @people.length == 0
      puts 'You need at least one person'
    else
      @people.each do |person|
        puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
    end
  end

  def create_book(title, author)
    @books.push(Book.new(title, author))
  end
end
