class Artist
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)

  end

  def songs
    artist_songs = Song.all.select {|song| song.artist == self}

  end

  def genres
    artist_songs = Song.all.select {|genre| genre.artist == self}
    artist_songs.map {|song| song.genre}
  end
end
