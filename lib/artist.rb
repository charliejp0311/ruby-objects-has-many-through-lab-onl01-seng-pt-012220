require "pry"
class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def new_song(title, genre)
    song = Song.new(title, self, genre)
  end

  def genres
    gs = []
    Song.all.each do |song|
      if song.artist = self
        gs << song.genre
      end
    end
    gs
  end

end
