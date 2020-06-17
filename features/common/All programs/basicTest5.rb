# a simple code for class variable i.e @@x
class Car
  #initialize our class variable
  @@count = 0;

  def initialize(c, p)
    @color = c
    @price = p
    # @@count=@@count+1
    @@count += 1
  end

  #here self is a keyword and it is not user defined .
  def self.printcount()
    puts "number of object created is #{@@count}"
  end
end

# create two object
car1 = Car.new("red", '200000')
car2 = Car.new("blue", '250000')

# call class method from class name to print car count
Car.printcount
Car.printcount