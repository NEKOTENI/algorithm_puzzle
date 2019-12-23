# 定数Nにカードの枚数を代入する。
# cardsという変数に[ false, false, false, false ....] <= falseが100個並んだ配列ができる
# 2〜Nまで繰り返す
# 2のカードから1枚おき、3のカードから2枚おき、なので、iから1を引いた繰り返しの数を設定する。
# jの繰り返しは、カードの枚数よりも少ない
# J枚めのcardsを裏返す = booleanをfalse => true もしくは true => false　にする。
# jの繰り返しにiを足して、次の繰り返しへ
# 上でできた配列に対してN定数回繰り返し
# cardsの要素がfalse = !cards[i]だったら、iに1を足した数をputs。1を足すのは、配列の添字が0から始まっているから。

# ここから
N = 100
cards = Array.new(N, false)
 
(2..N).each{|i|
  j = i - 1
  while (j < cards.size) do
    cards[j] = !cards[j]
    j += i
  end
}

N.times{|i|
  puts i + 1 if !cards[i]
}


# 所感
# day3
# またj =+ iをどうもj += 1にした(T . T)今度こそ！！
# 前回書いたコードで何をしてるのかを見ながらコードを書くという逆算をした。だいたい合ってた。
# .each do |i|を.each{|i|}で書くのに慣れ始めた。
