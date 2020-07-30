require 'pry'
class Artist 
  attr_accessor :name, :genre, :songs
  @@all = []
    
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def songs 
    Song.all.select do |song|
       song.artist.name == self.name
    end
  end
  
  def genres 
    Song.all.collect {|song| song.genre }
  end

  def self.all 
    @@all
  end
end
