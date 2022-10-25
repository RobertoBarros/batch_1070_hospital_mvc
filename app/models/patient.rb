class Patient
  attr_reader :name, :age
  attr_accessor :id, :room

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @age = attributes[:age]
  end
end



#roberto = Patient.new(age: 22, name: 'Roberto')
