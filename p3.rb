# Q: 次の規則に従って一つの長い文字列を作ります。

# 1 から 100000 までの整数をハイフン区切りで順に書き出す。
# ただしその際に数字「8」を書きたい場合は、「8」の代わりに「SNOWMAN」と書く。
# この文字列の、先頭(1 番目)からの 30 文字は以下のようになります。

# 1-2-3-4-5-6-7-SNOWMAN-9-10-11-

# また、261 番目からの 30 文字は以下のようになります。

# -77-7SNOWMAN-79-SNOWMAN0-SNOWM

# それでは、800001 番目からの 30 文字はどうなるかを求めてください。

def fun
  origin = ''
  (1..100000).each do |n|
    if n.to_s.include?('8')
      origin += n.to_s.gsub!('8', 'SNOWMAN') + '-'
    else
      origin += n.to_s + '-'
    end
  end
  origin
end

res = fun

puts res[800000, 30]
