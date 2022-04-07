require_relative './book'
require_relative './student'
require_relative './teacher'

class App
  attr_accessor :books, :people

  def initialize
    @books = []
    @people = []
  end

  def list_books
    if @books.length.zero?
      puts 'You don\'t have any books'
    else
      @books.each do |book|
        puts "Title: #{book.title}, Author: #{book.author}"
      end
    end
  end

  def list_people
    if @people.length.zero?
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

  def create_student(age, name, parent_permission)
    @people.push(Student.new(age, nil, name, parent_permission: parent_permission))
  end

  def create_teacher(age, name, specialization)
    @people.push(Student.new(age, specialization, name))
  end
end
