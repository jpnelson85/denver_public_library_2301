class Author
  attr_reader :first_name,
              :last_name,
              :books

  def initialize(author_details)
    @first_name = author_details[:first_name]
    @last_name = author_details[:last_name]
    @books = []
  end

  def name
    "#{first_name} #{last_name}"
  end

  def write(title, publication_date)
    book = Book.new({title: title, publication_date: publication_date})
    @books << book
  end
end
