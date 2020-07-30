require 'pry'
class Genre 
  attr_accessor :name, :songs, :artists
  @@all = [] #lists each genre in the class
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def songs 
    Song.all.select {|song| song.genre == self}
  end
  
  def artists 
    songs.collect {|song| song.artist}
  end
  
  def self.all 
    @@all
  end
  
end