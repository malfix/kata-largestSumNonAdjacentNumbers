class LargestSumNonAdiacentNumbers

  def initialize(*list)
    @list = list
  end

  def find()
    return nil if @list.nil? || @list.empty?
    sum = 0
    index = 0
    while (index < @list.size)
      index = check_max_in_window(index)
      sum += @list[index] if @list[index] > 0
      index += 2
    end
    sum > 0 ? sum : @list.max
  end

  def check_max_in_window(index)
    max_near = [ get_el(index)  + get_el(index + 2), get_el(index) + get_el(index + 3)].max
    max_far = [ get_el(index + 1) + get_el(index + 3), get_el(index + 1) + get_el(index + 4)].max
    max_near >= max_far ?  index : index + 1
  end

  def get_el(index)
    @list[index] || 0
  end
end
