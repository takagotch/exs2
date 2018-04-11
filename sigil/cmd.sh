csv = ~v"""
"""

csv = ~v"""
"""

csv = ~v"""
"""
/*
[
  [Item: "", Qty: 4, Price: 22.22],
  [Item: "", Qty: 1, Price: 2.33],
  [Item: "", Qty: 6, Price: 8.00]
]
*/

mix new --umbrella eval

cd eval/apps
mix new line_sigil
mix new evaluator

cd
mix compile





