use context starter2024
include csv

penguins = load-table:
  num :: Number,
  species :: String,
  island :: String,
  bill_length_mm :: Number,
  bill_depth_mm	:: Number,
  flipper_length_mm	:: Number,
  body_mass_g	:: Number,
  sex	:: String,
  year :: Number
  source: csv-table-url("https://raw.githubusercontent.com/NU-London/fundies-scratch/penguins.csv", default-options)
    
end