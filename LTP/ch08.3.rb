list_of_shit = []
while true
  puts 'Add to the list'
  shit = gets.chomp
  if shit == ''
    break
  else
    list_of_shit.push shit
  end
end
puts list_of_shit.sort
