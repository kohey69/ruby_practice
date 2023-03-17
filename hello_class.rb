class HelloWorld
  attr_accessor :name

  def initialize(myname = "Ruby")
    @name = myname
  end

  def greet
    puts "Hi, I am #{self.name}."
  end
  
  def name 
    @name 
  end

  def name=(value)
    @name = value
  end

  def test_name
    name = "Ruby"
    self.name = "Ruby"
  end

  def hello
    puts "Hello, world. I am #{@name}."
  end
end

bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby = HelloWorld.new

bob.hello
