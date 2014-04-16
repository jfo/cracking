require 'pry'

class Node
  attr_accessor :prev, :node, :next

  def initialize(node = nil, nextt = nil)
    @node = node
    @next = nextt
  end

end

def create_list
  100.times do
    @x ||= Node.new(rand(100))
    @y = Node.new(rand(100), @x)
    @x = Node.new(rand(100), @y)
  end
  @randlist = @x
end


create_list

binding.pry
