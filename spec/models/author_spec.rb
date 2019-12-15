require "rails_helper"

RSpec.describe Author, type: :model do 
  it { should have_many :book_authors }
  it { should have_many(:books).through(:book_authors)}
end 
