def list_books(books)
  books.each do |book|
    puts "Title: #{book.title}, Author: #{book.author}"
  end
end

def list_people(people)
  people.each do |person|
    puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
  end
end
