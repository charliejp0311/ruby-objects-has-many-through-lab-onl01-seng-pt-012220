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
    Appointment.new(patient, date, self)
  end

  def patients(date = nil)
    ps = []
    Appointment.all.each do |appt|
      if appt.doctor == self
        ps << appt.patient
        #binding.pry
      end
    end

    ps
  end

  def patients
    Appointment.all.select{|appt| appt.doctor == self}
  end
  
end
