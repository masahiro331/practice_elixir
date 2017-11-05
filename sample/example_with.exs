# mean  = with count = Enum.count(values),
#              sum = Enum.sum(values)
#         do
#           sum/count
#         end
# mean = with count = Enum.count(values),
#             sum = Enum.sum(values),
#        do: sum/count
result = with [a|_] <- [1,2,3], do: a
IO.puts result
