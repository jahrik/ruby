# directory where photos are stored
Dir.chdir '/home/jahrik/pictures'

# find all of the pictures
pic_names = Dir['/media/**/*.{JPG,jpg}']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "

# This will be our counter
pic_number = 1

pic_names.each do |name|
  print '.' # This is our "progress bar"

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  File.rename name, new_name
  # increment the counter.
  pic_number = pic_number + 1
end

puts
puts 'Finished'
