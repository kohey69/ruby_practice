def myloop
  while true # 無限に限り繰り返す
    yield # ブロックを呼ぶ
  end
end 

num = 1
myloop do 
  puts "num is #{num}"
  break if num > 10
  num *= 2
end