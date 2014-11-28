def ask_recursively question
  puts question
  reply = gets.chomp.downcase

  if reply == 'yes'
    true
  elsif reply == 'no'
    false
  else
    puts 'Please answer "yes" or "no".'
    ask_recursively question  # This is the magic line.
  end
end

puts 'Hello, and thank you for..'
puts
ask_recursively 'Do you like eating tacos?'           # Ignore this return value
ask_recursively 'Do you like eating burritos?'        # Ignore this return value
wets_bed = ask_recursively 'Do you wet the bed?'      # Save this return value
ask_recursively 'Do you like eating chimichangas?'
ask_recursively 'Do you like eating sopapillas?'
puts 'Just a few more questions....'
ask_recursively 'Do you like drinking horchata?'
ask_recursively 'Do you like eating flauntas?'

puts
puts 'DEBRIEFING:'
puts 'Thank you for....'
puts
puts wets_bed
