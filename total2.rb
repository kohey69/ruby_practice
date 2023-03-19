def total2(from, to, &block) # &blockは任意の名前で良い => proc引数という
  result = 0
  from.upto(to) do |num|
    if block # blockという名前のブロック引数がnil、false出ない時
      result += block.call(num)
    else
      result += num
    end
  end
  return result
end

p total2(1, 10)
p total2(1, 10){|num| num ** 2}
