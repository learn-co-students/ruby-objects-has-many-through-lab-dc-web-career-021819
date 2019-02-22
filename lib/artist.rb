class Artist
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    songs = Song.all.select do |e|
      e.artist == self
    end
    puts ("ARTISTS #SONGS:  #{songs}")
    songs
  end

  def self.all
    @@all
  end

  def genres
    ret = songs.map do |e|
      e.genre
    end
    puts ("ARTISTS #GENRES:  #{ret}")
    ret
  end
end
