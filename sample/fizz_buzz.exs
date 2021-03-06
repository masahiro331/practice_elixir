fizz_buzz_word = fn
  0,0,_ -> IO.puts "FizzBuzz"
  0,_,_ -> IO.puts "Fizz"
  _,0,_ -> IO.puts "Buzz"
  _,_,c -> IO.puts c
end

fizz_buzz = fn n ->
  fizz_buzz_word.(rem(n,3), rem(n,5), n)
end

# IO.inspect Enum.map(1..100, fizz_buzz)

join = fn f -> fn l -> IO.puts "#{f} #{l}" end end 
echo = join.("Hello,")
# echo.("World!")

times_2 = fn n -> n * 2 end
apply = fn fun, value -> fun.(value) end
IO.puts apply.(times_2, 7)
