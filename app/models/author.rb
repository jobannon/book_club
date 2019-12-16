class Author < ApplicationRecord
  has_many :book_authors
  has_many :books, through: :book_authors

  def averagenumpages
    total = self.books.sum do |book|
      book.pages 
    end
    total.to_f / self.books.count
  end

end
