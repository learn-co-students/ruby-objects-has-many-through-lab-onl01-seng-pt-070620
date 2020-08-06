class Genre
  
  attr_accessor :name, :songs, :artists
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    Song.all.select {|song|song.genre == self}
  end
  
  def self.all
    @@all
  end
  
  def artists
    self.songs.collect do |song|
      song.artist
    end
  end

end