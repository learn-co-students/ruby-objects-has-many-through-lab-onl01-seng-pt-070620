class Song 
  
  @@all=[ ]
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name= name
    @artist= artist
    @genre= genre
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all<< self
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end