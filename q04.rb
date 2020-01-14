#長さnセンチの棒
#1センチ単位に切り分ける
#m人の人
#最短何回で切り分けができるか

def cutbar(man, n, current)
  #現在の棒の数が現在の棒の長さ以上だったら
  if current >= n then
    0 #切り終えた
  #現在棒の数が人の数よりも少なかったら
  elsif current < man then 
    1 + cutbar(man, n, current * 2)
  #上記以外
  else
    1 + cutbar(man, n, current + man)
  end
end

puts cutbar(3, 20, 1)
puts cutbar(5, 100, 1)


def cutbar2(man, n)
  count = 0
  current = 1 #currentは現在の長さ

  while n > current do
    #三項演算子。?の左の条件を満たす場合は、currentを実行、満たさない場合はmanを実行する。
    current += current < man ? current : man
    count = count + 1
  end

  puts(count)
end

cutbar2(3, 20)
cutbar2(5, 100)



# day3
# 久しぶりなので本の写経。
# やっぱりcutbar2の方が受け入れやすい（というか理解しやすい）。
# cutbarは再帰呼び出しを抜きにしても、コードの内容の理解が難しい。
# 繰り返しやろう。
