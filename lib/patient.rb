class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    ret = Appointment.all.select do |e|
      e.patient == self
    end

    ret
  end

  def doctors
    ret = appointments.map do |e|
      e.doctor
    end
    ret
  end
end
