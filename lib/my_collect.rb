array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
def my_collect(array)
  i = 0
  result = []
  while i < array.length
    result.push(yield array[i]) #yield is like calling another method
      i += 1
  end
  result
end

#yield goes here
my_collect(array) {|name| name.split(" ").first}