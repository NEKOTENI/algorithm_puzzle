# 作ってもらったヽ(*＾ω＾*)ﾉ

# op = ['+', '-', '*', '/', '']
# def sanitize(val)
#   nums = val.split(/[-\+*\/]/).collect{|n| n.to_i.to_s}
#   ops = val.split(/[0-9]/).select{|o| o != ''}
#   str = ''
#   nums.each_with_index do |n,i|
#     str += n
#     str += ops[i] if ops[i]
#   end
#   str
# end
# 1000.upto(9999) do |i|
#   c = i.to_s
#   for j in 0...op.length do
#     for k in 0...op.length do
#       for l in 0...op.length do
#         val = c[3] + op[j] + c[2] + op[k] + c[1] + op[l] + c[0]
#         val = sanitize(val)
#         if val.length > 4
#           begin
#             if i == eval(val)
#               puts(val + ' = ' + i.to_s)
#             end
#           rescue ZeroDivisionError => e
#           rescue => e
#             p e.message
#             p e.backtrace
#             p val
#           end
#         end
#       end
#     end
#   end
# end

# ので、写経。def sanitize(val)は初期設定で設置
# 1...3は3未満まで、の意味。i < 3ですね。untilでし。
# ちなみに、1..3は3までの意味。i == 3ですね。byでし。

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

op = ['+', '-', '*', '/', '']

1000.upto(9999) do |i|
  c = i.to_s
  for j in 0...op.length do
    for k in 0...op.length do
      for l in 0...op.length do
        val = c[3] + op[j] + c[2] + op[k] + c[1] + op[l] + c[0] #iの数をreverseした数に加減乗除演算子を間に挟んだ形にする。
        val = sanitize(val)
        if val.length > 4 #１つ以上演算子を入れたいので、4より大きいlengthを指定
          begin
            if i == eval(val) # stringのvalの中身を式として認識してね、のeval
              puts(val + ' = ' + i.to_s)
            end
          rescue ZeroDivisionError => e # 0で割ると例外が起きるので、このエラーが起きた時はeという変数に格納しといてという指示
          rescue => e # 他に例外が起きたら全部eという変数に格納しといて、という指示
            p e.message
            p e.backtrace
            p val
          end
        end
      end
    end
  end
end
