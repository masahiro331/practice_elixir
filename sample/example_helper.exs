map = &Enum.map/2
map.([1,2,3,4], &(&1+2))

out = &IO.inspect/1
Enum.each [1,2,3,4], out
