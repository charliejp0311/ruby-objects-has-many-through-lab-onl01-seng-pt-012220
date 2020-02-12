require "pry"
class Doctor
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

  def appointments
    Appointment.all.select{|appointment| appointment.doctor == self}
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    patties = []
    Appointment.all.each do |appt|
      if appt.doctor == self 
        patties << appt.patient
      end
    end
    patties
  end

end
