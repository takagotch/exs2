
def fun(a) when is_list(a), do: true
defp fun(a), do: false

people = DB.find_customers
orders = Orders.for_customers(people)
tax = sales_tax(orders, 2018)
filing = perpare_filing(tax)

filing = prepare_filling(sales_tax(Orders.for_customers(DB.find_customers), 2018))

filling = DB.find_customers
            |> Orders.for_customers
	    |> sales_tax(2018)
	    |> prepare_filling

list
|> sales_tax(2018)
|> prepare_filing

DB.find_customers
  |> Orders.for_customers
  |> sales_tax(2018)
  |> prepare_filling



