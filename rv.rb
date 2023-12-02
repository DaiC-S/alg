# Q-1:7以上7777777以下の7の倍数を全て書き出したとき、数字「7」は何回現れるか。



# Q-2:次のような英字 500 文字からなる文字列があります。

# JNPGCZBUXHJAVWXGWIZAXTIQYMRRSSYDNUWCJYVZVZZCYZYKWUMOJNZYUJIKCWXUVDDNOYJDXYIXADXJYZNZTSNQDXGUBYSZPRCRPQYIPTXCSIHNZXWFWSQKVYOHWIZJYWZDQSLPIFXRYWYLXWWYDCBWIKJQGWSUXPHCORZXSXLWWOIZPIMQXCWVCMAYWKKPRNWAYYATXCHQCZKTIWIRLOZVQWKXZGYRZUQJXDJQQYMYLNBZXWWMJXPZXKYPGWRETBPPDHUMQMKNUYHFGQKHMYKJKWYTIBZSTOZFHLQVYXLGCNIEXQFAGBWAFMXSWXTCWZKXSAXUZFLUYPWIGKWYUDTOOYYWZYQZXDVJSYSTGJWXNZGZOZSZCXCHZERWCIWYTIPQRWXZWCYYQYUWTNGZXZUBYKYVZWPEKOYZNWKYGPOYXLTWYYTAFYXPXXQWCWSZLMXRGKVCCWLANWWCBZYWLIRYGJRHMKWVBWXWGRLETQNZHYAQUTZK

# この文字列に対して次のような変換を順に適用します。

# • W を全て削除する。
# • X の 3 つ先の文字が X でない場合は、その(先の方の)文字を E に変える。
# • YZ という文字の並びを全て E に変える。

# 変換の結果の文字列の 432 文字目(先頭を 1 文字目と数える)からの 5 文字を答えてください。



# Q-3: 次の規則に従って一つの長い文字列を作ります。

# 1 から 100000 までの整数をハイフン区切りで順に書き出す。
# ただしその際に数字「8」を書きたい場合は、「8」の代わりに「SNOWMAN」と書く。
# この文字列の、先頭(1 番目)からの 30 文字は以下のようになります。

# 1-2-3-4-5-6-7-SNOWMAN-9-10-11-

# また、261 番目からの 30 文字は以下のようになります。

# -77-7SNOWMAN-79-SNOWMAN0-SNOWM

# それでは、800001 番目からの 30 文字はどうなるかを求めてください。



# Q-4:整数 1234567 の各桁の和(1 + 2 + 3 + 4 + 5 + 6 + 7)は 28 であり、7 の倍数となる。
# 1234567 のように「各桁の和が 7 の倍数である整数」を「幸せな整数」と呼ぶことにする。

# 1 から 9999999 までの範囲の整数のうち、「幸せな整数」はいくつあるかを求めてください。



# Q-5：三辺の長さが 3，4，5 である三角形は直角三角形です。これは「ピタゴラスの定理」から示されます。

# 【ピタゴラスの定理】
# 直角三角形について、直角をはさむ 2 辺の長さが a と b で斜辺の長さが c であるとき a^2 + b^2 = c^2 が成り立つ。
# つまり、3^2 + 4^2 = 5^2（ = 25）が成立するので直角三角形といえるのです。

# 三辺の長さが整数で面積が 8000 以下である直角三角形は何種類あるかを求めてください。

# ※合同なもの（例えば“3，4，5”と“5，4，3”）は区別せず 1 種類として数えます。



# Q-6：整数に対して、「一桁ことにばらして各桁の数字の積を求める」という操作を考えます。

# 123 → 1 × 2 × 3 = 6
# 666 → 6 × 6 × 6 = 216
# 1024 → 1 × 0 × 2 × 4 = 0
# 任意の整数について、「操作」を繰り返し適用すると、最終的には一桁の数に到達します。

# 77 → 49 → 36 → 18 → 8
# 123456 → 720 → 0
# 一桁の数に到達するのに必要な「操作」の回数は、77では4回、123456では2回となります。

# それでは、1000000以下の整数のうち、一桁の数に到達するのに必要な「操作」の回数が5回となるものはいくつあるかを、求めてください。



# Q-7

# 現代において用いられているローマ数字の規則では、正の整数（3999 以下）を以下の規則に従ってアルファベットの列で表します。

# I で 1、V で 5、X で 10、L で 50、C で 100、D で 500、M で 1000 を表す。
# それ以外の数はこれらの文字の和として表し、値の大きな文字から順に並べて書く。
# 16→XVI； 32→XXXII； 256→CCLVI； 1023→MXXIII
# I、X、C を 5 個以上、あるいは、V、L、D を 2 個以上使うような冗長な書き方はしない。例えば 16 は XIIIIII や VVVI ではなく常に XVI で表す。
# この規則で I、X、C を 4 個使う必要がある場合は、代わりに、次のような特殊な書き方をする。
# IIII(4)→IV；XXXX(40)→XL；CCCC(400)→CD
# VIIII(9)→IX；LXXXX(90)→XC；DCCCC(900)→CM
# ※つまり IV のように「逆に」並ぶ場合は V − I = 5 − 1 = 4 と解釈する。
# ローマ数字の表記の例を挙げておきます。

# 64 → LXIV
# 511 → DXI
# 1800 → MDCCC
# 2047 → MMXLVII
# それでは、1 以上 1000 以下の整数について、ローマ数字の表記がちょうど 8 文字になるものをすべて足し合わせた合計を求めてください。