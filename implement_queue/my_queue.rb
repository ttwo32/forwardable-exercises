require 'forwardable'
class MyQueue
  extend Forwardable
  
  def initialize
    @array = []
  end
    
  def_delegator :@array, :push, :enqueue
  
  def_delegator :@array, :shift, :dequeue
  
  def_delegators :@array, :first, :last, :size, :clear
  

  
end