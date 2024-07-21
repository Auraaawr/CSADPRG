puts "Monthly Tax Calculator Philippines\n\n"
puts "Monthly income: " #inputs the monthly income of the user
monthly_income = gets.to_f

# SSS computation
if monthly_income < 4250
  sss = 180.00
elsif monthly_income <= 4750
  sss = 202.50
elsif monthly_income <= 5250
  sss = 225.00
elsif monthly_income <= 5750
  sss = 247.50
elsif monthly_income <= 6250
  sss = 270.00
elsif monthly_income <= 6750
  sss = 292.50
elsif monthly_income <= 7250
  sss = 315.00
elsif monthly_income <= 7750
  sss = 337.50
elsif monthly_income <= 8250
  sss = 360.00
elsif monthly_income <= 8750
  sss = 382.50
elsif monthly_income <= 9250
  sss = 405.00
elsif monthly_income <= 9750
  sss = 427.50
elsif monthly_income <= 10250
  sss = 450.00
elsif monthly_income <= 10750
  sss = 472.50
elsif monthly_income <= 11250
  sss = 495.00
elsif monthly_income <= 11750
  sss = 517.50
elsif monthly_income <= 12250
  sss = 540.00
elsif monthly_income <= 12750
  sss = 562.50
elsif monthly_income <= 13250
  sss = 585.00
elsif monthly_income <= 13750
  sss = 607.50
elsif monthly_income <= 14250
  sss = 630.00
elsif monthly_income <= 14750
  sss = 652.50
elsif monthly_income <= 15250
  sss = 675.00
elsif monthly_income <= 15750
  sss = 697.50
elsif monthly_income <= 16250
  sss = 720.00
elsif monthly_income <= 16750
  sss = 742.50
elsif monthly_income <= 17250
  sss = 765.00
elsif monthly_income <= 17750
  sss = 787.50
elsif monthly_income <= 18250
  sss = 810.00
elsif monthly_income <= 18750
  sss = 832.50
elsif monthly_income <= 19250
  sss = 855.00
elsif monthly_income <= 19750
  sss = 877.50
elsif monthly_income <= 20250
  sss = 900.00
elsif monthly_income <= 20750
  sss = 922.50
elsif monthly_income <= 21250
  sss = 945.00
elsif monthly_income <= 21750
  sss = 967.50
elsif monthly_income <= 22250
  sss = 990.00
elsif monthly_income <= 22750
  sss = 1012.50
elsif monthly_income <= 23250
  sss = 1035.00
elsif monthly_income <= 23750
  sss = 1057.50
elsif monthly_income <= 24250
  sss = 1080.00
elsif monthly_income <= 24750
  sss = 1102.50
elsif monthly_income <= 25250
  sss = 1125.00
elsif monthly_income <= 25750
  sss = 1147.00
elsif monthly_income <= 26250
  sss = 1170.00
elsif monthly_income <= 26750
  sss = 1192.50
elsif monthly_income <= 27250
  sss = 1215.00
elsif monthly_income <= 27750
  sss = 1237.50
elsif monthly_income <= 28250
  sss = 1260.00
elsif monthly_income <= 28750
  sss = 1282.50
elsif monthly_income <= 29250
  sss = 1305.00
elsif monthly_income <= 29750
  sss = 1327.50
else
  sss = 1350.00
end

# philhealth computation
  if monthly_income <= 10000
      phil_health = 500
  elsif monthly_income > 10000 && monthly_income < 100000
      phil_health = monthly_income * 0.025
  elsif monthly_income >= 100000
      phil_health = 5000
  end

# pagibig computation
  if monthly_income <= 1500
    pagibig = monthly_income * 0.01
  elsif monthly_income >= 1501 && monthly_income <= 4999
    pagibig = monthly_income * 0.02
  elsif monthly_income >= 5000 
    pagibig = 100
  end

 total_contributions = sss + phil_health + pagibig

 taxable_income = monthly_income - total_contributions

 # income tax computation
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

after_tax_income = monthly_income - income_tax
total_deductions = total_contributions + income_tax
net_pay = monthly_income - total_deductions

puts "\nMonthly Income: #{format('%.2f', monthly_income)}php\n"

puts "\nTax Computation:"
puts "Income Tax: #{format('%.2f', income_tax)}php"
puts "Net Pay after Tax: #{format('%.2f', after_tax_income)}php\n\n"

puts "Monthly Contributions:"
puts "SSS: #{format('%.2f', sss)}php"
puts "PhilHealth: #{format('%.2f', phil_health)}php"
puts "Pag-IBIG: #{format('%.2f', pagibig)}php"
puts "Total Contributions: #{format('%.2f', total_contributions)}php\n\n"

puts "Total Deductions: #{format('%.2f', total_deductions)}php"
puts "Net Pay after Deductions: #{format('%.2f', net_pay)}php"
