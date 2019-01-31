def oxford_comma(array)
  if array.length == 1
    array.join
  elsif array.length == 2
    array.join(' and ')
  elsif array.length > 2
    array = array.join(",")
    array = array.split(",")
    # array = array.join(", ")
    # array = array.split(",")
    last_word = array.slice!(-1)
    array = array.insert(-1," and")
    array = array.join(',')
    array << last_word
  end
end