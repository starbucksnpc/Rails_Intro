require_relative '../config/initializers/httparty.rb'
require_relative '../app/services/books_service.rb'
require_relative '../app/services/villains_service.rb'
require_relative '../app/services/shorts_service.rb'

# Seed Books
begin
    books_data = BooksService.fetch_books
    books_data.each do |book_data|
      # check if books_data is hash or not
      puts book_data.inspect
      
      Book.create!(
        title: book_data['title'],
        year: book_data['year'],
        pages: book_data['pages']
      )
    end
  rescue => e
    puts "Seeding failed: #{e.message}"
  end

# Seed Villains
# villains_data = VillainsService.fetch_villains
# villains_data.each do |villain_data|
#   Villain.create!(
#     name: villain_data['name'],
#     gender: villain_data['gender'],
#     status: villain_data['status']
#   )
# end

# Seed Shorts
# shorts_data = ShortsService.fetch_shorts
# shorts_data.each do |short_data|
#   Short.create!(
#     title: short_data['title'],
#     type: short_data['type'],
#     handle: short_data['handle'],
#     year: short_data['year']
#   )
# end
