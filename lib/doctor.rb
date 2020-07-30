require 'pry'
class Doctor 
  attr_accessor :name, :patient, :appointments
  @@all = []
  
  def initialize(name) 
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def appointments 
    Appointment.all.select {|appt| appt.doctor == self}
  end
  
  def patients 
    appointments.collect {|appt| appt.patient}
  end
  
  def self.all 
    @@all
  end
end