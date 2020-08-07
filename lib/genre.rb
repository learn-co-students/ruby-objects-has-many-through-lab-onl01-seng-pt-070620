class Genre 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def songs 
    Songs.all.select |song|
      song.self
    end
  end
  
  def artists
    songs.collect do |song|
      artist.song
  end
  
end