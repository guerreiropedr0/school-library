class Person

  def initialize(name = 'Unknown', parent_permission = true, age)
    @id = id
    @name = name
    @age = age
  end

  def id
    @id
  end

  def name
    @name
  end

  def age
    @age
  end

  def name=(value)
    @name = value
  end

  def age=(value)
    @age = value
  end

  private
  
  def is_of_age?
    if @age >= 18
      true
    else false
    end
  end
end
