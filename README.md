### p

Q:

A:

```Ruby

```

### p1

Q:7 以上 7777777 以下の 7 の倍数を全て書き出したとき、数字「7」は何回現れるか。
A:777784

```Ruby
def how_many(v)
  v.to_s.count('7')
end


res = 0

  (7..7777777).each do |n|
    if n % 7 == 0
      res += how_many(n)
    end
  end

puts res
```

### p2

Q:次のような英字 500 文字からなる文字列があります。

JNPGCZBUXHJAVWXGWIZAXTIQYMRRSSYDNUWCJYVZVZZCYZYKWUMOJNZYUJIKCWXUVDDNOYJDXYIXADXJYZNZTSNQDXGUBYSZPRCRPQYIPTXCSIHNZXWFWSQKVYOHWIZJYWZDQSLPIFXRYWYLXWWYDCBWIKJQGWSUXPHCORZXSXLWWOIZPIMQXCWVCMAYWKKPRNWAYYATXCHQCZKTIWIRLOZVQWKXZGYRZUQJXDJQQYMYLNBZXWWMJXPZXKYPGWRETBPPDHUMQMKNUYHFGQKHMYKJKWYTIBZSTOZFHLQVYXLGCNIEXQFAGBWAFMXSWXTCWZKXSAXUZFLUYPWIGKWYUDTOOYYWZYQZXDVJSYSTGJWXNZGZOZSZCXCHZERWCIWYTIPQRWXZWCYYQYUWTNGZXZUBYKYVZWPEKOYZNWKYGPOYXLTWYYTAFYXPXXQWCWSZLMXRGKVCCWLANWWCBZYWLIRYGJRHMKWVBWXWGRLETQNZHYAQUTZK

この文字列に対して次のような変換を順に適用します。

• W を全て削除する。
• X の 3 つ先の文字が X でない場合は、その(先の方の)文字を E に変える。
• YZ という文字の並びを全て E に変える。

変換の結果の文字列の 432 文字目(先頭を 1 文字目と数える)からの 5 文字を答えてください。

A：GREET

```Ruby

# 文字列の変換を行う関数
def transform_string(str)
  # Wを全て削除
  str.gsub!('W', '')

  # Xの3つ先の文字がXでない場合、その文字をEに変える
  (0...str.length).each do |i|
    if str[i] == 'X' && i + 3 < str.length && str[i + 3] != 'X'
      str[i + 3] = 'E'
    end
  end

  # YZを全てEに変える
  str.gsub!('YZ', 'E')

  str
end

# 元の文字列
original_string = 'JNPGCZBUXHJAVWXGWIZAXTIQYMRRSSYDNUWCJYVZVZZCYZYKWUMOJNZYUJIKCWXUVDDNOYJDXYIXADXJYZNZTSNQDXGUBYSZPRCRPQYIPTXCSIHNZXWFWSQKVYOHWIZJYWZDQSLPIFXRYWYLXWWYDCBWIKJQGWSUXPHCORZXSXLWWOIZPIMQXCWVCMAYWKKPRNWAYYATXCHQCZKTIWIRLOZVQWKXZGYRZUQJXDJQQYMYLNBZXWWMJXPZXKYPGWRETBPPDHUMQMKNUYHFGQKHMYKJKWYTIBZSTOZFHLQVYXLGCNIEXQFAGBWAFMXSWXTCWZKXSAXUZFLUYPWIGKWYUDTOOYYWZYQZXDVJSYSTGJWXNZGZOZSZCXCHZERWCIWYTIPQRWXZWCYYQYUWTNGZXZUBYKYVZWPEKOYZNWKYGPOYXLTWYYTAFYXPXXQWCWSZLMXRGKVCCWLANWWCBZYWLIRYGJRHMKWVBWXWGRLETQNZHYAQUTZK'

# 変換後の文字列を取得
transformed_string = transform_string(original_string)

# 結果の文字列の432文字目からの5文字を出力
puts transformed_string[431, 5]

```

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

A:

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

A:

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
