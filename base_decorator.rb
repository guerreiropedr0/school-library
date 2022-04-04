require_relative './nameable'

class Decorator < Nameable
  def initialize(namable)
    @namable = namable
  end
end
