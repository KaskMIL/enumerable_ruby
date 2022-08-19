# Module
module MyEnumerables
  def all?
    result = true
    each { |el| result = false unless yield(el) }
    puts result
  end

  def any?
    result = false
    each do |el|
      result = true if yield(el)
    end
    puts result
  end

  def filter
    result = []
    each do |el|
      result.push(el) if yield(el)
    end
    result
  end
end
