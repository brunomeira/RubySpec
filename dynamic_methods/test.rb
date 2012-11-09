require Dir.getwd+'/planet.rb'
require "ruby-debug"

puts Planet.new(6.9737,5.972).doub_population.to_s
puts Planet.new(6.9737,5.972).doub_weight.to_s
