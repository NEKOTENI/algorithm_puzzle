# 10以上の数をnumに入れる
num = 11

# 見つかるまでずっと回す
while true
# 10,2,8進数のそれぞれの回文数が全部同じ
  if
    num.to_s == num.to_s.reverse &&
    num.to_s(2) == num.to_s(2).reverse &&
    num.to_s(8) == num.to_s(8).reverse
# みつかったらputs
    puts num
# 見つかったら終了
    break
  end
# 見つからなかったらnumに2足して奇数にしてやりなおし
  num += 2
end

# 今回覚えてたとこ
# - num.to_s(2)　.to_sに引数持たせると進数計算ができる
#
# 今回覚えてなかったとこ
# - while true イテレーションかけるのを忘れてた。。。
