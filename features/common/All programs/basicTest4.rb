#code for shortcut of getter and setter and also code for to_s method
class Animal
#  setter and getter
  attr_accessor :name, :age, :trait

  def to_s
    return "the name of pet is #{name}, her age is  #{age}, and she is very #{trait}"
  end
end

first_animal = Animal.new
first_animal.name = "kitty"
first_animal.age = 10
first_animal.trait = "loudy"
puts first_animal.name
puts first_animal.age
puts first_animal.trait

puts "#{first_animal}"
puts first_animal