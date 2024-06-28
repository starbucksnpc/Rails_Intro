class BooksService
    include HTTParty
    base_uri 'https://stephen-king-api.onrender.com/api/books' 
  
    def self.fetch_books
      response = get('/books')  
      if response.success?
        JSON.parse(response.body)  
      else
        raise StandardError, "Failed to fetch books: #{response.code}"
      end
    end
  end
  