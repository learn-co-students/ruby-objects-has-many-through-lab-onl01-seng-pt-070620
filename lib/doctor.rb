class Doctor
  attr_reader :name

  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.find_all {|apt| apt.doctor == self}
  end

  def patients
    appointments.map {|ap| ap.patient}
  end
end