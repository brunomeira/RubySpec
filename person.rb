class Person
  attr_accessor :age,
                :weight

  def initialize(age, weight)
    @age = age
    @weight = weight
  end  
    

  def self.method_missing(method, people) 

    if method =~ /^average_/ 
      selected_attr = method[8...method.length]
      total = people.inject(0) do |sum, person|
        if selected_attr == "age"
          sum+= person.age
        else  
          sum+= person.weight
        end      
      end  
      
      return total/people.length.to_f
    end
  end

end