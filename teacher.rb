require_relative './person.rb'

class Teacher < Person

  def initialize(name = 'Unknown', parent_permission = true, age, specialization)
    super(name, parent_permission, age)
    @specialization = specialization
  end

end
