# list = {'yvr' => 'Vancouver', 'yba' => 'Banff', 'yyz' => 'Toronto', 'yxx' => 'Abbotsford', 'ybw' => 'Calgary'}


list = {
  yvr: 'Vancouver', 
  yba: 'Banff', 
  yyz: 'Toronto', 
  yxx: 'Abbotsford', 
  ybw: 'Calgary'
}
# Why is it returning nil instead of first element of the list above
      # Returning nil because its looking for the 0 index instead of the key, value pairs
      # 0 index works on arrays, but since this is a hash then you have to use key, value pairs
p list[0]

# To return first element in list, add first key instead
p list[:yvr]



