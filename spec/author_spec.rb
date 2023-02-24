require 'rspec'
require './lib/book'
require './lib/author'

RSpec.describe Author do
  it 'exists' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    expect(charlotte_bronte).to be_a(Author)
  end

  it 'name and empty array of books' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    expect(charlotte_bronte.name).to eq("Charlotte Bronte")
    expect(charlotte_bronte.books).to eq([])
  end

  it 'write method' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expect(jane_eyre.class).to be_a(Book)
    expect(jane_eyre.title).to eq("Jane Eyre")
  end

  it 'adds book to books array' do
    author.write('Jane Eyre', 'October 16, 1847')
    expect(author.books.size).to eq(1)
    author.write('Villette', '1853')
    expect(author.books.size).to eq(2)
  end
end