# 整数 1234567 の各桁の和(1 + 2 + 3 + 4 + 5 + 6 + 7)は 28 であり、7 の倍数となる。
# 1234567 のように「各桁の和が 7 の倍数である整数」を「幸せな整数」と呼ぶことにする。

# 1 から 9999999 までの範囲の整数のうち、「幸せな整数」はいくつあるかを求めてください。

def happy_number(v)
  judge = v.to_s.chars.map{|m| m.to_i}.sum
  judge % 7 == 0
end

def res
  count = 0
  (1..9999999).each do |n|
    count += 1 if happy_number(n)
  end
  count
end

puts res