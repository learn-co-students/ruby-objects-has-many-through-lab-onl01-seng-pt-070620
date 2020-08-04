class Patient
  attr_reader :name
  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|ap| ap.patient == self}
  end

  def doctors
    appointments.map {|ap| ap.doctor}
  end
end