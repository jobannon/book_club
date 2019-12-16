require "rails_helper"

RSpec.describe Author, type: :model do 
  it { should have_many :book_authors }
  it { should have_many(:books).through(:book_authors)}
end 

RSpec.describe "methods" do 
  it ".averagenumpages == can calculate average number of pages per author" do 
    author_1 = Author.create!(name: "Fyodor dostoyevsky") 
    book_1 = Book.create!(title: "Crime and Punishment", publication_year: "1866", pages: 2001 ) 
    book_4 = Book.create!(title: "The Brothers Karamazov", publication_year: "1879", pages: 150 )
    author_1.books << book_1 
    author_1.books << book_4
     
    expect(author_1.averagenumpages).to eq(1075.5)
  end
end 

