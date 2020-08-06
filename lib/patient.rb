class Patient 
  
  attr_accessor :name, :doctor, :date, :appointments, :doctors
  
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
    @@all << self 
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def self.all 
    @@all 
  end
  
end