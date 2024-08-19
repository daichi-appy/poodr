class Engine
  # horsepowerは、エンジンの馬力。fuel_typeは燃料の種類。
  attr_reader :horsepower, :fuel_type

  def initialize(horsepower, fuel_type)
    @horsepower = horsepower
    @fuel_type = fuel_type
  end

  def start
    "Engine is starting..."
  end
end

class Car
  attr_reader :color, :horsepower, :fuel_type

  def initialize(color, horsepower, fuel_type)
    @color = color
    @horsepower = horsepower
    @fuel_type = fuel_type
  end

  def drive
    Engine.new(horsepower, fuel_type).start
  end
end

# 実行例
car = Car.new("red", 100)
puts car.drive
