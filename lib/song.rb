require "pry"
class Song 
  attr_accessor :title, :artist, :genre 
  @@all = []

  def initialize(title, genre = nil)
    @title = title
    @genre = genre
    save 
  end

  def save 
    @@all << self     
  end

  def self.all 
    @@all 
  end
  
end