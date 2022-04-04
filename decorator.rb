class Nameable
  def correct_name
    raise NotImplementedError
  end
end

class Decorator < Nameable
  def initialize(namable)
    @namable = namable
  end

  def correct_name
    @namable.correct_name
  end
end

class CapitalizeDecorator < Decorator
  def correct_name
    @namable.correct_name.capitalize
  end
end
