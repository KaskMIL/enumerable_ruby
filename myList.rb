require './myEnumerable'

# My class
class MyList
  include MyEnumerables
  def initialize(*num)
    @list = num
  end

  def each
    @list.each { |num| yield(num) if block_given? }
  end
end

luna = MyList.new(1, 2, 3, 4, 5)
luna.each { |num| puts num }
luna.all? { |el| el < 5 }
luna.any? { |el| el >= 5 }
fil = luna.filter { |el| el >= 4 }
puts fil
