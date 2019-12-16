# Day4
# sanitizeメソッド以外はとりあえず自分で書き出し。
# 1...3は3未満まで、の意味。i < 3。untilでし。
# 1..3は3までの意味。i < 4。byでし。
# # 演算子と''を変数opに定義する
# 1000から9999までイテレート（.upto() do |i|)
# イテレートの回数をto_sしてあとで数字にできるようにしておく。
# 演算子sをそれぞれイテレート(for i in 1...5)
#iの数をreverseした数に加減乗除演算子を間に挟んだ形にする。
#１つ以上演算子を入れたいので、4より大きいlengthを指定
# 文字列valの中身を式として使えるeval(val)使う。
# 0で割ると例外が起きるので、 ZeroDivisionErrorが起きた時はeという変数に格納しといてという指示
# # 他に例外が起きたら全部eという変数に格納しといて、という指示



def sanitize(val)
  nums = val.split(/[-\+*\/]/).collect{|n| n.to_i.to_s}
  ops = val.split(/[0-9]/).select{|o| o != ''}
  str = ''
  nums.each_with_index do |n,i|
    str += n
    str += ops[i] if ops[i]
  end
  str
end

# ここから( ^ω^ )

op = ['+', '-', '*', '/', '']

1000.upto(9999) do |i|
  c = i.to_s
  for j in 0...op.length
    for k in 0...op.length
      for l in 0...op.length
        val = c[3] + op[j] + c[2] + op[k] + c[1] + op[l] + c[0]
        val = sanitize(val)

        if val.length > 4
          begin
            if i == eval(val)
              puts(val + '=' + i.to_s)
            end
          rescue ZeroDivisionError => e
          rescue => e
            p e.message
            p e.backtrace
            p val
          end
        end
      end
    end
  end
end


# 所感
# valをsanitizeするところまではすんなり書けた。
# val.length > 4の設定がすっかり頭から抜けてた(^_^;)
# 週明け（つまり２日空き）の割にはよく覚えてたと思う。
