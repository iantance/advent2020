class One

  def part_one
    one, two = find_entries(2)
    one * two
  end

  def part_two
    one, two, three = find_entries(3)
    one * two * three
  end

  def parse_inputs
    @parse_inputs ||= File::readlines('./lib/inputs/one.txt').map(&:chomp).map(&:to_i)
  end

  def find_entries(count)
    parse_inputs.permutation(count).find { |inputs| inputs.sum == 2020 }
  end
end
