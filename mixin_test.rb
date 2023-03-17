module M
  def meth
    "meth"
  end
end

class C
  include M 
end

c = C.new
p c.meth #=>meth
p C.include?(M) #=>true
p C.ancestors #=>[C, M, Object, Kernel, BasicObject]
p C.superclass #=> Object

module ClassMethods
  def cmethod
    "class method"
  end
end

module InstanceMethods
  def imethod
    "instance method"
  end
end

class MyClass
  extend ClassMethods
  include InstanceMethods
end

p MyClass.cmethod #=> "class method"
p MyClass.new.imethod #=> "instance method"

include InstanceMethods
InstanceMethods.imethod
