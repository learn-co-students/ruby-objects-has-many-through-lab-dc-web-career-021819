class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    Song.all.select{|genre| genre.genre == self}
  end

  def artists
    self.songs.collect{|genre| genre.artist}
  end

  def self.all
    @@all
  end
end
