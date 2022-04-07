def list_books(books)
  books.each do |book|
    puts "Title: #{book.title}, Author: #{book.author}"
  end
end
