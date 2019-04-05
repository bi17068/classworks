json.extract! book, :id, :title, :auther, :coverURL, :publish, :published, :genre, :rack_number, :isbn, :price, :a, :b, :created_at, :updated_at
json.url book_url(book, format: :json)
