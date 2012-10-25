require Dir.getwd+'/person.rb'
require "ruby-debug"

puts Person.average_age([Person.new(18,2),Person.new(28,22),Person.new(181,2)]).to_s
