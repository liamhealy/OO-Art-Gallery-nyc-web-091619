require_relative '../config/environment.rb'


artist1 = Artist.new("Liam", 12)
artist2 = Artist.new("Evans", 20)
artist3 = Artist.new("Vera", 18)
artist4 = Artist.new("Chett", 21)
artist5 = Artist.new("Stephen", 23)

gallery1 = Gallery.new("Flatiron", "Manhattan")
gallery2 = Gallery.new("Marist", "Poughkeepsie")
gallery3 = Gallery.new("Pearl River", "Rockland")

painting1 = Painting.new("Liam's Painting", 999.00, artist1, gallery3)
painting2 = Painting.new("Evans' Painting", 2000.00, artist2, gallery1)
painting3 = Painting.new("Liam's Painting #2", 5000.00, artist1, gallery2)
painting4 = Painting.new("Vera's Painting", 1500.00, artist3, gallery1)
painting5 = Painting.new("Liam's Painting #3", 4000.00, artist1, gallery1)
painting6 = Painting.new("Chett's Painting", 3000.00, artist4, gallery1)
painting7 = Painting.new("Stephen's Painting", 2400.00, artist5, gallery1)



binding.pry

puts "Bob Ross rules."
