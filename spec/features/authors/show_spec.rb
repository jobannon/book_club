require 'rails_helper'

RSpec.describe "as a user" do
  describe "when I visit of the books index page" do 
    before(:each) do 
      @author_1 = Author.create!(name: "Fyodor dostoyevsky") 
      @book_1 = Book.create!(title: "Crime and Punishment", publication_year: "1866", pages: 2001 ) 
      @book_4 = Book.create!(title: "The Brothers Karamazov", publication_year: "1879", pages: 150) 
      @author_1.books << @book_1 << @book_4
    end

    it "shows a link per author name and when i click it, 
    I see the authors show page which includes:
    -name 
    -title of each book they have written
    -average number of pages for all their books" do 
      
      visit "/books"
      within "#book-#{@book_1.id}" do 
        click_link("#{@book_1.authors.first.name}")
      end

      expect(current_path).to eq("/authors/#{@author_1.id}")
      

      within "#author_show-#{@author_1.id}" do 
        expect(page).to have_content(@author_1.name)
        expect(page).to have_content("1075.5")

        within "#author_show_books-#{@author_1.id}" do 
          expect(page).to have_content(@book_1.title)
          expect(page).to have_content(@book_4.title)
        end
      end
    end
  end
end 
