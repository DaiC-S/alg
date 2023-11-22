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
