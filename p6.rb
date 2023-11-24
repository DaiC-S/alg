# 整数に対して、「一桁ことにばらして各桁の数字の積を求める」という操作を考えます。

# 123 → 1 × 2 × 3 = 6
# 666 → 6 × 6 × 6 = 216
# 1024 → 1 × 0 × 2 × 4 = 0
# 任意の整数について、「操作」を繰り返し適用すると、最終的には一桁の数に到達します。

# 77 → 49 → 36 → 18 → 8
# 123456 → 720 → 0
# 一桁の数に到達するのに必要な「操作」の回数は、77では4回、123456では2回となります。

# それでは、1000000以下の整数のうち、一桁の数に到達するのに必要な「操作」の回数が5回となるものはいくつあるかを、求めてください。

def product_of_digits(number)
  number.to_s.chars.map(&:to_i).reduce(:*)
end

def count_operations_to_single_digit(number)
  count = 0
  while number >= 10
    number = product_of_digits(number)
    count += 1
  end
  count
end

def count_numbers_with_five_operations
  count = 0
  (1..1000000).each do |num|
    count += 1 if count_operations_to_single_digit(num) == 5
  end
  count
end

puts count_numbers_with_five_operations