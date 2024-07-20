puts "Monthly Tax Calculator Philippines\n\n"
puts "Monthly income: "
monthly_income = gets.to_f

sss = monthly_income * 0.045
phil_health = monthly_income * 0.025
pagibig = monthly_income * 0.004  # not sure about computations
total_contributions = sss + phil_health + pagibig

taxable_income = monthly_income - total_contributions

income_tax = 0

if taxable_income < 20833
    income_tax = 0
elsif taxable_income >= 20833 && taxable_income <= 33332
    income_tax = (taxable_income - 20833) * 0.15
elsif taxable_income >= 33333 && taxable_income <= 66666
    income_tax = (taxable_income - 33333) * 0.20 + 1875
elsif taxable_income >= 66667 && taxable_income <= 166666
    income_tax = (taxable_income - 66667) * 0.25 + 8541.80
elsif taxable_income >= 166667 && taxable_income <= 666666
    income_tax = (taxable_income - 166667) * 0.30 + 33541.80
elsif taxable_income > 666666
    income_tax = (taxable_income - 666667) * 0.35 + 183541.80
end

afterTaxIncome = monthly_income - income_tax
total_deductions = total_contributions + income_tax
net_pay = monthly_income - total_deductions

puts "\nMonthly Income: #{monthly_income.round(2)}\n"

puts "\nTax Computation"
puts "Income Tax: #{income_tax.round(2)}"
puts "Net Pay after Tax: #{afterTaxIncome.round(2)}\n\n"

puts "Monthly Contributions:"
puts "SSS: #{sss.round(2)}"
puts "PhilHealth: #{phil_health.round(2)}"
puts "Pag-IBIG: #{pagibig.round(2)}"
puts "Total Contributions: #{total_contributions.round(2)}\n\n"

puts "Total Deductions: #{total_deductions.round(2)}"
puts "Net Pay after Deductions: #{net_pay.round(2)}"
