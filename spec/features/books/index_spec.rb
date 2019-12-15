require "rails_helper"

RSpec.describe "as a user" do 
  describe "when i visit /books" do 
    before(:each) do 
      @book_1 = Book.create!(title: "Crime and Punishment", publication_year: "1866", pages: 2001 ) 
      @book_2 = Book.create!(title: "A Tale of Two Cities", publication_year: "1859", pages: 350) 
      @book_3 = Book.create!(title: "Pride and Pejudice", publication_year: "1813", pages: 100) 
    end
    it "should show the 
    -title
    -number of pages
    -publication_year
    -name of each author that wrote the book
    for each book in the system" do 
      
      visit "/books"

      system_books= [@book_1, @book_2, @book_3]

      system_books.each do |book|
        expect(page).to have_content(book.title)
        expect(page).to have_content(book.publication_year)
        expect(page).to have_content(book.pages)
      end 
    end 
  end 
end 

