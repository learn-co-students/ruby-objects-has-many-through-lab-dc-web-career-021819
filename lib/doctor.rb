class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
  end

  def appointments
    ret = Appointment.all.select do |e|
      e.doctor == self
    end

    ret
  end

  def patients
    ret = appointments.map do |e|
      e.patient
    end
    ret
  end
end
