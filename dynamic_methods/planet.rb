class Planet
  def initialize(population, weight)
    @population = population
    @weight = weight
  end 
  
  ["population", "weight"].each do |var|
    define_method "#{var}" do
      instance_variable_get("@"+var)
    end
    
    define_method "doub_#{var}" do
      self.send("#{var}") * 2.0
    end  
  end
end