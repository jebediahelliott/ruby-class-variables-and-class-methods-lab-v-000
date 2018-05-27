class Song
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
  end

  attr_accessor :naem, :artist, :genre

  @@count = 0
  @@genres = []

  def self.count
    @@count
  end

  def self.genres
    
  end
end
