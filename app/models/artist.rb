class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    self.paintings.all.map do |painting|
      painting.gallery
    end
  end

  def cities
    self.galleries.all.map do |gallery|
      gallery.location
    end
  end

  def self.total_experience
    self.all.inject(0) do |sum, artist|
      sum + artist.years_experience
    end
  end

  def self.most_prolific
    self.all.max_by do |artist|
      artist.years_experience * artist.paintings.count
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
