class Song
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  attr_accessor :naem, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_histo = {}
    @@genres.each do |genre|
      if !genre_histo.key?(genre)
        genre_histo[genre] = @@genres.count(genre)
      end
    end
  end
end
