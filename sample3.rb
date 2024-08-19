class Engine
  # horsepowerは、エンジンの馬力。fuel_typeは燃料の種類。
  attr_reader :horsepower, :fuel_type
  def initialize(args)
    @horsepower = args[:horsepower]
    @fuel_type = args[:fuel_type]
  end

  def start
    "Engine is starting..."
  end
end

class Car
  attr_reader :color, :engine

  def initialize(args)
    @color = args[:color]
    @engine = args[:engine]
  end

  def drive
    engine.start
  end
end

# 実行例
car = Car.new(:color => "red", :engine => Engine.new(:horsepower => 100, :fuel_type => "gasoline"))
puts car.drive
