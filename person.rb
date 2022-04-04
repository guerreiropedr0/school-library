class Person

  def initialize(name = 'Unknown', parent_permission = true, age)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
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

  def can_use_services?
    if is_of_age? || @parent_permission
      true
    else false
    end
  end

  private

  def is_of_age?
    if @age >= 18
      true
    else false
    end
  end
  
end
