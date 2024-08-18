class Engine
  # horsepowerは、エンジンの馬力。fuel_typeは燃料の種類。
  def initialize(horsepower, fuel_type)
    @horsepower = horsepower
    @fuel_type = fuel_type
  end

  def start
    "Engine is starting..."
  end
end

class Car
  def initialize(color, engine)
    @color = color
    @engine = engine
  end

  def drive
    engine.start
  end
end

# 実行例
car = Car.new("red", Engine.new(100, "gasoline"))
puts car.drive
