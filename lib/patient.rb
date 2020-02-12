require "pry"
class Patient
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

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select{|appointment| appointment.patient == self}
  end

  def doctors
    docs = []
    Appointment.all.each do |appt|
      if appt.patient == self 
        docs << appt.doctor
      end
    end
    docs 
    
  end

end
