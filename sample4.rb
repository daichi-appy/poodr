class Car
  attr_reader :color

  def initialize(args)
    @color = args[:color]
  end

  def drive
    "Car is driving..."
  end
end

class Engine
  attr_reader :horsepower, :fuel_type, :car

  def initialize(args)
    @horsepower = args[:horsepower]
    @fuel_type = args[:fuel_type]
    @car = args[:car] # Car インスタンスに依存
  end

  def start
    "Engine is starting... " + car.drive
  end
end

# 実行例
car = Car.new(:color => "red")
engine = Engine.new(:horsepower => 100, :fuel_type => "gasoline", :car => car)
puts engine.start
