filename = 'ListerQuote.txt'
test_string = 'I promise that I swear absolutely that' +
              'I will never mention gazpacho soup again.'
# the 'w' is for write-access
File.open filename, 'w' do |f|
  f.write test_string
end

read_string = File.read filename
puts(read_string == test_string)
