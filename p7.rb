# 現代において用いられているローマ数字の規則では、正の整数（3999以下）を以下の規則に従ってアルファベットの列で表します。

# Iで1、Vで5、Xで10、Lで50、Cで100、Dで500、Mで1000を表す。
# それ以外の数はこれらの文字の和として表し、値の大きな文字から順に並べて書く。
# 16→XVI； 32→XXXII； 256→CCLVI； 1023→MXXIII
# I、X、Cを5個以上、あるいは、V、L、Dを2個以上使うような冗長な書き方はしない。例えば16はXIIIIIIやVVVIではなく常にXVIで表す。
# この規則でI、X、Cを4個使う必要がある場合は、代わりに、次のような特殊な書き方をする。
# IIII(4)→IV；XXXX(40)→XL；CCCC(400)→CD
# VIIII(9)→IX；LXXXX(90)→XC；DCCCC(900)→CM
# ※つまりIVのように「逆に」並ぶ場合はV − I = 5 − 1 = 4と解釈する。
# ローマ数字の表記の例を挙げておきます。

# 64 → LXIV
# 511 → DXI
# 1800 → MDCCC
# 2047 → MMXLVII
# それでは、1以上1000以下の整数について、ローマ数字の表記がちょうど8文字になるものをすべて足し合わせた合計を求めてください。

def roman(n)
  a = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  b = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']

  string = ''
  a.each_with_index do |t, idx|
    while n >= t
      n -= t
      string += b[idx]
    end
  end
  string
end

def res
  sum = 0
  (1..1000).each do |n|
    sum += n if roman(n).length == 8
  end
  sum
end

puts res