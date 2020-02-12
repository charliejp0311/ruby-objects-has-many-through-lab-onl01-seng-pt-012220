require "pry"
class Appointment
  attr_accessor :doctor, :patient, :date
  @@all = []

  def initialize(date, patient, doctor)
    binding.pry
    @date = date
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
