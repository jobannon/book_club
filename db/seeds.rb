# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
      @author_1 = Author.create!(name: "Fyodor dostoyevsky") 
      @book_1 = Book.create!(title: "Crime and Punishment", publication_year: "1866", pages: 2001 ) 
      @book_4 = Book.create!(title: "The Brothers Karamazov", publication_year: "1879", pages: 150) 
      @author_1.books << @book_1 << @book_4

      @author_2 = Author.create!(name: "Charles Dickens") 
      @book_5 = Book.create!(title: "Oliver Twist", publication_year: "1837", pages: 98) 
      @book_2 = Book.create!(title: "A Tale of Two Cities", publication_year: "1859", pages: 350) 
      @author_2.books << @book_2 << @book_5
      
      @author_3 = Author.create!(name: "Jane Austen") 
      @book_3 = Book.create!(title: "Pride and Pejudice", publication_year: "1813", pages: 100) 
      @book_6 = Book.create!(title: "Emma", publication_year: "1815", pages: 50) 
      @author_3.books << @book_3 << @book_6
