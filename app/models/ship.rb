class Ship
  attr_reader :name, :type, :attributes
  
  SHIPS = []
  
  def initialize(args)
    @name = args[:name] 
    @type = args[:type]
    @attributes = args[:attributes]
    SHIPS << self
  end 
  
  def self.all 
    COURSES
  end 
  
  def self.clear_all 
    COURSES.clear 
  end 
  
end