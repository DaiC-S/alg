# 縦横6マスのマス目をもつ盤があります。この盤の各マスを左上から始めて「渦巻き」上にたどっていって、その順にA，B，C，D，E……のアルファベット文字を書いていきます。
#（Zまで使い切ったら、またAから始めます。）全てのマスに文字を書き終えると、添付した図のようになります。

# ここで、左上から右下に降りる対角線に沿って文字を読むと「AUGIAK」となりました。

# それでは、縦横32マス目をもつ盤について、同様の方法で「渦巻き」状にアルファベット文字を書いて、さらに左上から右下への対角線に沿って文字を読んで得られる文字列は何か、求めてください。

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