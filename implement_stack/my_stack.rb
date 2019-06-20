require 'forwardable'
class MyStack
  extend Forwardable
  
  def initialize
    @array = []
  end
  
  def_delegator :@array, :last, :peek
  
  def_delegators :@array, :push, :pop, :size, :clear
end
