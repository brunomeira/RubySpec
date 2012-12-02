class LivingCreature
  class AbstractMethodError < RuntimeError; end
  
  def eat
    raise AbstractMethodError, 
          "A Living creature must define the way it eats."
  end
end


class Person < LivingCreature

  def eat
    puts "Yummy Yummy"
  end

end

class Dog < LivingCreature

  def eat
    puts "I'm eating my canine food"
  end

end