def fac num
  if num < 0
    return '# >= 0 please'
  end 
  if num <= 1
    1
  else
    num * fac(num-1)
  end
end

def ask
  num = gets.chomp.to_i
end

puts '# >= 0 please'
puts fac ask
