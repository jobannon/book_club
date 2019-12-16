require "rails_helper"

RSpec.describe "as a user" do 
  describe "when i visit /books" do 
    before(:each) do 
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
    end
    it "should show the 
    -title
    -number of pages
    -publication_year
    -name of each author that wrote the book
    for each book in the system" do 
      
      visit "/books"

      system_books= [@book_1, @book_2, @book_3, @book_4, @book_5, @book_6]

      system_books.each do |book|
        within "#book-#{book.id}" do 
          expect(page).to have_content(book.title)
          expect(page).to have_content(book.publication_year)
          expect(page).to have_content(book.pages)
          expect(page).to have_content(book.authors.first.name)
        end
      end 

    end 
  end 
end 

