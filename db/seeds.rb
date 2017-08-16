#Reset the Users table
User.delete_all
momo = User.create name: 'Momo', email: 'momo@example.com', password: 'momo'
mickey = User.create name: 'Mickey', email: 'mickey@example.com', password: 'mickey'
minnie = User.create name: 'Minnie', email: 'minnie@example.com', password: 'minnie'

#Reset Book table
Book.delete_all
book_data = JSON.parse(open('db/book_examples.json').read)
book_data.each do |data|
  b = Book.create title: data['title'],
                  author: data['author'],
                  genre: data['genre'],
                  photo_url: data['photo_url'],
                  summary: data['summary'],
                  user_id: User.sample.id
end

#Reset Reviews table
Review.delete_all

Book.all.each do |book|
  4.times do
    Review.create book_id: book.id,
                  rating: [1, 2, 3, 4, 5].sample,
                  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod..."
  end
end

puts "#{User.count} users."
puts "#{Book.count} books."
puts "#{Review.count} reviews."
