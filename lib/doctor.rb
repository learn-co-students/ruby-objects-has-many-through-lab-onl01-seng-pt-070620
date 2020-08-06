class Doctor
  
  attr_accessor :name, :appointments, :patient
  
   @@all=[]
  
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments 
    Appointment.all.select {|appointment| appointment.doctor == self}
    
  end 


  

  
end