require "pry"
class Song
  attr_accessor :title, :artist, :genre
  @@all = []

  def initialize(title, artist, genre = nil)
    @title = title
    @genre = genre
    @artist = artist
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
