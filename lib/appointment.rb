class Appointment 
  
  attr_accessor :patient, :doctor, :date
  
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    
    patient.doctors << doctor unless patient.doctors.include? doctor 
    patient.appointments << self 
    doctor.patients << patient
    @@all << self 
  end
  
   def self.all 
    @@all 
  end
  
end