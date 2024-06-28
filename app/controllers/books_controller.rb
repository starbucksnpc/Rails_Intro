class BooksController < ApplicationController
    def index
      @books = BooksService.fetch_books  # From Books API, get a books list
    rescue StandardError => e
      flash[:error] = "Error fetching books: #{e.message}"
      @books = []  # if error
    end
  end