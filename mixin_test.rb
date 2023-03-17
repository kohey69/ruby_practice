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
