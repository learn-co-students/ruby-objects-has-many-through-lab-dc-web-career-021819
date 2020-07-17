class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    ret = Song.all.select do |e|
      e.genre == self
    end
    puts ("GENRE #SONGS:  #{ret}")
    ret
  end

  def artists
    ret = songs.map do |e|
      e.artist
    end
    puts ("GENRE #ARTISTS:  #{ret}")
    ret
  end
end
