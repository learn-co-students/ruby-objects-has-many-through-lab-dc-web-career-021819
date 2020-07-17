class Appointment
  attr_accessor :date, :doctor, :patient
  @@all = []

  def initialize(date, patient, doctor)
    puts ("FIRST :  #{date}")
    puts ("SECOND :  #{patient}")
    puts ("THIRD :  #{doctor}")

    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end
end
