class Doctor 
    @@all = []
    attr_accessor :name 
    def initialize(name)
        @@all << self 
        @name= name
    end
    def self.all 
        @@all 
    end 
    def new_appointment(date, patient)
        Appointment.new(date, patient, self)#should know it belongs to the doctor)
    end 
    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end 
    def patients
        appointments.map {|appointment| appointment.patient}
    end 


end 
