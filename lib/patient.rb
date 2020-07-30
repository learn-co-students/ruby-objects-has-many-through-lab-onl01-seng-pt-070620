class Patient 
  attr_accessor :name, :doctor, :appointment
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def new_appointment(date, doctor) 
    Appointment.new(date, self, doctor)
  end
  
  def appointments 
    Appointment.all.select {|appt| appt.patient == self}
  end
  
  def doctors 
    appointments.collect {|appt| appt.doctor}
  end
  
  def self.all 
    @@all
  end
end