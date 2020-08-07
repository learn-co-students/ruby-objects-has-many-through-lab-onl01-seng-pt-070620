require 'pry'

class Artist 
  
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
    Song.all.select {|song| song.artist == self}
    
  end
  
  def new_song(name, song)
    Song.new(name, self, song)
    
    
  end
  
  def genres
    songs.collect do |song|
      song.genre
    end
  end
  
  
end