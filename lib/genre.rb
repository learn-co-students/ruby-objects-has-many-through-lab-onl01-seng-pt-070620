class Genre 
  
  @@all=[ ]
  
  attr_accessor :name 
  
  def initialize(name)
    @name= name
    save
  end
    
  def self.all
    @@all
  end
    
  def save
    @@all<< self
  end
  
   def songs
    Song.all { |song| song.genre == self }
  end
  
   def artists
     songs.map(&:artist)
   end
   
  
   
  
end
  