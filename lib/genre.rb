class Genre 
    @@all = []
    attr_accessor :name
    def initialize(name)
        @@all << self 
        @name= name 
    end 
    def songs 
        Song.all.select {|song| song.genre == self}
    end 
    def artists 
        songs.map {|song| song.artist}
    end 
    def self.all 
        @@all 
    end 
end