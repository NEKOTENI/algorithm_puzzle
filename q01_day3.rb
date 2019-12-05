num = 11

while true
  if num.to_s == num.to_s.reverse &&
    num.to_s(2) == num.to_s(2).reverse &&
    num.to_s(8) == num.to_s(8).reverse

    puts num
  else
    num += 2
  end
end

# while ture 覚えてたヽ(*＾ω＾*)ﾉ
# elseを使って、breakを入れない状態にしてみた。こっちの書き方の方が馴染みがある。

