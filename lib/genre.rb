require "pry"
class Genre
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
    Song.all.select{|song| song.genre == self}
  end

  def artists 
    allStars = []
    Song.all.each do |song|
      if song.genre == self
        allStars << song.artist
      end
    end
    allStars
  end

end
