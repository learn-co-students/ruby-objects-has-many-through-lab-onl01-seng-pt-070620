class Genre

  @@all = []

  attr_accessor :name, :song, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

def self.all
  @@all
end
def songs
  Song.all.select {|song|
    song.genre = self}
end

def artists

  Artist.all.select {|song|
    song.artist = self}

end



end
