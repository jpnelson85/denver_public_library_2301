require 'rspec'
require './lib/author'
require './lib/book'

RSpec.describe Library do
  it 'exists' do
    library = Library.new("Bracken")
    expect(library).to be_a(Library)
  end

  it 'has name, books, and authors attributes' do
    library = Library.new("Bracken")
    expect(library.name).to eq("Bracken")
    expect(library.books).to eq([])
    expect(library.authors).to eq([])
  end
end