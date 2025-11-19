use context starter2024
include tables

fun pull-closer(t):
  t.add-column("new-x", lam(x, y): x * 0.9 end, ["x","y"])
   .add-column("new-y", lam(x, y): y * 0.9 end, ["x", "y"])
end

fun distance(x, y): num-sqrt(x * x + y * y) end


fun closest-item(t):
  t.row-n(0)["item"] where
    min = t.build-column("dist", lam(x, y): distance(x, y) end, ["x", "y"])
            .rows()
            .map(lam(r): r["dist"] end)
            .fold(lam(a, b): if a < b then a else b end, 99999)
  end
end


fun obfuscate(t):
  t.update("item", lam(name): string-repeat("X", string-length(name)) end)
end


items = table: item, x, y
  row: "Sword of Dawn", 10, 0
  row: "Shield of Night", 0, 20
  row: "Potion", 15, 15
end

pulled = pull-closer(items)
print("Pulled Table:")
pulled.print()

print("Closest item:")
print(closest-item(pulled))

print("Obfuscated Table:")
obfuscate(pulled).print()




