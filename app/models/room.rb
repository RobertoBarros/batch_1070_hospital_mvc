class Room
  attr_reader :number, :capacity, :patients
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @number = attributes[:number]
    @capacity = attributes[:capacity] || 0
    @patients = []
  end

  def add_patient(patient)
    @patients << patient
    patient.room = self
  end

end

# r = Room.new(666, 3)
# roberto = Patient.new(age: 22, name: 'Roberto')
# r.add_patient(roberto)

# roberto.room.numbert #=> 666

# r.patients.count #=> 1
