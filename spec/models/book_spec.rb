require "rails_helper"

RSpec.describe Book, type: :model do 
  it { should have_many :book_authors }
  it { should have_many(:authors).through(:book_authors) }
end 
