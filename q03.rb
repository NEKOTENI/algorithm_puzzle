# カードの初期化をする。
N = 100
cards = Array.new(N, false) # cardsの初期設定はfalse

# 2〜Nまで裏返す
(2..N).each{|i|
  j = i - 1
  while (j < cards.size) do
    cards[j] = !cards[j] # ここでcardsのbooleanをfalse => true もしくは true => false　にする。
    j += i
  end
}

# 裏向きのカードを出力する
N.times{|i|
        puts i + 1 if !cards[i] # i+1しているのは、配列が0から始まっているから。
}

# 所感
# day1
# ArreyをAllayって間違えたｗ
# Array.new(N, false）っていう書き方は知らなかった。
# イテレーションの回数を入れておくiの設置の仕方がよくわかってない。調べておく。
