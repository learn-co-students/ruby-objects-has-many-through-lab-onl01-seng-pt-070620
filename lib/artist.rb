class Artist 
  attr_accessor :name, :songs, :genre  
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
   # @genre = genre
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def songs
    Song.all.select {|s| s.artist == self}
  end 
  
  def genres 
    songs.collect {|s| s.genre}
  end 
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end 
  
end 