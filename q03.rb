# 定数Nにカードの枚数100を代入する。
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

(2..N).each do |i|
  j = i - 1
  while (j < cards.size) do
    cards[j] = !cards[j]
    j += i
  end
end

N.times do |i|
  puts i + 1 if !cards[i]
end


# 所感
# day4
# j =+ iをちゃんと書けたぜー！！
# あ。。。.each do |i|を.each{|i|}で書くの忘れてた。
# 答えを見ないで書けたヽ(*＾ω＾*)ﾉ 
