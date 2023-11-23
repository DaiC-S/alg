# 三辺の長さが 3，4，5 である三角形は直角三角形です。これは「ピタゴラスの定理」から示されます。

# 【ピタゴラスの定理】
# 直角三角形について、直角をはさむ 2 辺の長さが a と b で斜辺の長さが c であるとき a^2 + b^2 = c^2 が成り立つ。
# つまり、3^2 + 4^2 = 5^2（ = 25）が成立するので直角三角形といえるのです。

# 三辺の長さが整数で面積が 8000 以下である直角三角形は何種類あるかを求めてください。

# ※合同なもの（例えば“3，4，5”と“5，4，3”）は区別せず 1 種類として数えます。

def res

  count = 0

  (1..127).each do |a|
    (a..16000).each do |b|
        c = Math.sqrt(a*a + b*b)
        if c % 1 == 0 && (a * b) <= 16000 
          count += 1
        end
    end
  end
  count
end

puts res