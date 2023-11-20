# Q:7以上7777777以下の7の倍数を全て書き出したとき、数字「7」は何回現れるか。
# A:777784

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