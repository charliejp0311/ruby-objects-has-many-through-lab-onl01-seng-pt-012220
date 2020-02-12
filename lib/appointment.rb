require "pry"
class Appointment 
  attr_accessor :doctor, :patient
  @@all = []

  def initialize(doctor, patient)
    @doctor = doctor
    @patient = patient
    save 
  end

  def save 
    @@all << self 
  end

  def self.all 
    @@all 
  end
  
end