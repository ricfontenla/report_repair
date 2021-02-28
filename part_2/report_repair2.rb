require_relative './lib/fetch_numbers.rb'

puts 'Report Repair'
#find the three entries that sum to 2020 and then multiply those three numbers together

file = File.read('./../data/entries.txt').lines(chomp: true)

n = FetchNumbers.new(file)
numbers = n.numbers()
solution = n.mult()

puts("Os numeros que somam 2020 são: #{numbers}")
puts("A multiplicação desses numeros é: #{solution}")