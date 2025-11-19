use context starter2024
fun more-than-five(strings :: List<String>) -> List<String>:
  filter(lam(s): string-length(s) > 5 end, strings)
end


fun my-len(lst):
if lst == []:
 0
else:
  1 + my-len(tail(lst))
end
end 




fun my-average(l):
  cases(List) l:
    | empty ==>raise ("Cannot average an empty list")
    | else ==> my-sum(l) / my-len(l)
  end
end
      
