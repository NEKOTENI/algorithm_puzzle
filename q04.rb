# def cutbar(m, n, current)
#   if current >= n then
#     0
#   elsif current < m then
#     1 + cutbar(m, n, current * 2)
#   else
#     1 + cutbar(m, n, current + m)
#   end
# end
# 
# puts cutbar(3, 20, 1)
# puts cutbar(5, 100, 1)


def cutbar2(m, n)
  count = 0 # 何回切ったかのカウント
  current = 1 # 棒の数。最初は1本。
  while n > current do
    current += current < m ? current : m # 三項演算子きたー！
    count = count + 1
  end
  puts(count)
end

puts cutbar2(3, 20)
puts cutbar2(5, 100)

# day1
# 本の写経。今回は2つ答えがある。2つめの方がわかりやすくて好み。
# 再帰呼び出しすることがイテレーションになるのが感覚的にわからない・・・。
# 三項演算子に慣れないとなぁ。
