### p3

Q: 次の規則に従って一つの長い文字列を作ります。

1 から 100000 までの整数をハイフン区切りで順に書き出す。
ただしその際に数字「8」を書きたい場合は、「8」の代わりに「SNOWMAN」と書く。
この文字列の、先頭(1 番目)からの 30 文字は以下のようになります。

1-2-3-4-5-6-7-SNOWMAN-9-10-11-

また、261 番目からの 30 文字は以下のようになります。

-77-7SNOWMAN-79-SNOWMAN0-SNOWM

それでは、800001 番目からの 30 文字はどうなるかを求めてください。

A: MAN-SNOWMAN9679-SNOWMAN96SNOWM

```Ruby

# 1から100000までの数字を特定のルールに従って文字列に変換する関数
def create_special_string
  special_string = ''
  (1..100000).each do |num|
    if num.to_s.include?('8')
      # 数字に'8'が含まれている場合は'SNOWMAN'に置き換える
      special_string += num.to_s.gsub('8', 'SNOWMAN') + '-'
    else
      # そうでない場合は数字をそのまま使用
      special_string += num.to_s + '-'
    end
  end
  special_string
end

# 特殊な文字列を生成
special_string = create_special_string

# 800001番目から30文字を出力
puts special_string[800000, 30]

```

### p4

Q:整数 1234567 の各桁の和(1 + 2 + 3 + 4 + 5 + 6 + 7)は 28 であり、7 の倍数となる。1234567 のように「各桁の和が 7 の倍数である整数」を「幸せな整数」と呼ぶことにする。

1 から 9999999 までの範囲の整数のうち、「幸せな整数」はいくつあるかを求めてください。

A:1428653

```Ruby

# 各桁の和が7の倍数であるかどうかを判断する関数
def is_happy_number(number)
  sum_of_digits = number.to_s.chars.map(&:to_i).sum
  sum_of_digits % 7 == 0
end

# 1から9999999までの範囲で幸せな整数の数を数える関数
def count_happy_numbers
  count = 0
  (1..9999999).each do |num|
    count += 1 if is_happy_number(num)
  end
  count
end

# 幸せな整数の数を出力
puts count_happy_numbers
```

### p5

Q: 三辺の長さが 3，4，5 である三角形は直角三角形です。これは「ピタゴラスの定理」から示されます。

【ピタゴラスの定理】
直角三角形について、直角をはさむ 2 辺の長さが a と b で斜辺の長さが c であるとき a^2 + b^2 = c^2 が成り立つ。
つまり、3^2 + 4^2 = 5^2（ = 25）が成立するので直角三角形といえるのです。

三辺の長さが整数で面積が 8000 以下である直角三角形は何種類あるかを求めてください。

※合同なもの（例えば“3，4，5”と“5，4，3”）は区別せず 1 種類として数えます。

A:145

```Ruby

def count_right_triangles
  count = 0
  (1..500).each do |a| # 127上限 かつ ↓
    (a..500).each do |b| # 16000上限 にしたら、論理性の納得度がより高くない？
      c = Math.sqrt(a*a + b*b)
      if c % 1 == 0 && a * b / 2.0 <= 8000
        count += 1
      end
    end
  end
  count
end

puts count_right_triangles
```

### p6

Q:
整数に対して、「一桁ことにばらして各桁の数字の積を求める」という操作を考えます。

123 → 1 × 2 × 3 = 6
666 → 6 × 6 × 6 = 216
1024 → 1 × 0 × 2 × 4 = 0
任意の整数について、「操作」を繰り返し適用すると、最終的には一桁の数に到達します。

77 → 49 → 36 → 18 → 8
123456 → 720 → 0
一桁の数に到達するのに必要な「操作」の回数は、77 では 4 回、123456 では 2 回となります。

それでは、1000000 以下の整数のうち、一桁の数に到達するのに必要な「操作」の回数が 5 回となるものはいくつあるかを、求めてください。

A: 24654

```Ruby

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

```

### p7

Q:

現代において用いられているローマ数字の規則では、正の整数（3999 以下）を以下の規則に従ってアルファベットの列で表します。

I で 1、V で 5、X で 10、L で 50、C で 100、D で 500、M で 1000 を表す。
それ以外の数はこれらの文字の和として表し、値の大きな文字から順に並べて書く。
16→XVI； 32→XXXII； 256→CCLVI； 1023→MXXIII
I、X、C を 5 個以上、あるいは、V、L、D を 2 個以上使うような冗長な書き方はしない。例えば 16 は XIIIIII や VVVI ではなく常に XVI で表す。
この規則で I、X、C を 4 個使う必要がある場合は、代わりに、次のような特殊な書き方をする。
IIII(4)→IV；XXXX(40)→XL；CCCC(400)→CD
VIIII(9)→IX；LXXXX(90)→XC；DCCCC(900)→CM
※つまり IV のように「逆に」並ぶ場合は V − I = 5 − 1 = 4 と解釈する。
ローマ数字の表記の例を挙げておきます。

64 → LXIV
511 → DXI
1800 → MDCCC
2047 → MMXLVII
それでは、1 以上 1000 以下の整数について、ローマ数字の表記がちょうど 8 文字になるものをすべて足し合わせた合計を求めてください。

A:75924

```Ruby
def to_roman(num)
  values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  numerals = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']

  roman = ''
  values.each_with_index do |value, index|
    while num >= value
      num -= value
      roman += numerals[index]
    end
  end

  roman
end

def sum_of_numbers_with_eight_char_roman
  sum = 0
  (1..1000).each do |num|
    sum += num if to_roman(num).length == 8
  end
  sum
end

puts sum_of_numbers_with_eight_char_roman
```

### p8

Q:
縦横 6 マスのマス目をもつ盤があります。この盤の各マスを左上から始めて「渦巻き」上にたどっていって、その順に A，B，C，D，E……のアルファベット文字を書いていきます。（Z まで使い切ったら、また A から始めます。）全てのマスに文字を書き終えると、添付した図のようになります。

ここで、左上から右下に降りる対角線に沿って文字を読むと「AUGIAK」となりました。

それでは、縦横 32 マス目をもつ盤について、同様の方法で「渦巻き」状にアルファベット文字を書いて、さらに左上から右下への対角線に沿って文字を読んで得られる文字列は何か、求めてください。

A:

```Ruby
def generate_spiral
  size = 32
  board = Array.new(size) { Array.new(size) }
  alphabet = ('A'..'Z').to_a
  directions = [[0, 1], [1, 0], [0, -1], [-1, 0]]
  current = [0, 0]
  dir = 0
  alpha_index = 0

  (size**2).times do
    board[current[0]][current[1]] = alphabet[alpha_index]
    alpha_index = (alpha_index + 1) % 26
    next_pos = [current[0] + directions[dir][0], current[1] + directions[dir][1]]
    if next_pos.min < 0 || next_pos.max >= size || board[next_pos[0]][next_pos[1]]
      dir = (dir + 1) % 4
      next_pos = [current[0] + directions[dir][0], current[1] + directions[dir][1]]
    end
    current = next_pos
  end

  diagonal_string = (0...size).map { |i| board[i][i] }.join
end

puts generate_spiral

```
