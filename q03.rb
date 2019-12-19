# 定数Nにカードの枚数を代入する。
N = 100
# cardsという変数に[ false, false, false, false ....] <= falseが100個並んだ配列ができる
cards = Array.new(N, false)

# 2〜Nまで繰り返す
(2..N).each do |i|
# 2のカードから1枚おき、3のカードから2枚おき、なので、iから1を引いた繰り返しの数を設定する。
  j = i - 1
# jの繰り返しは、カードの枚数よりも少ない
  while j < cards.size do
# J枚めのcardsを裏返す = booleanをfalse => true もしくは true => false　にする。
    cards[j] = !cards[j]
# jの繰り返しにiを足して、次の繰り返しへ
    j += i
  end
end

# 上でできた配列に対してN定数回繰り返し
N.times{|i|
# cardsの要素がfalse = !cards[i]だったら、iに1を足した数をputs。1を足すのは、配列の添字が0から始まっているから。
  puts i + 1 if !cards[i]
}



# 所感
# day2
# j =+ iをどうもj += 1にしがち・・・。iですよ。
# 今日も正解を見て何してるのか考えて理解することをやった。
# cards[i]がbooleanであることを覚えてないと!cards[i]で???になる(^◇^;)
