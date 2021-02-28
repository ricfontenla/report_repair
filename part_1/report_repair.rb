puts 'Report Repair'
#find the two entries that sum to 2020 and then multiply those two numbers together

list = File.read('./../data/entries.txt').lines(chomp: true)

numbers = []

list.each do |value1|
  list.each do |value2|
    if (value1 != value2)
      if (value1.to_i + value2.to_i == 2020)
        numbers << value1
      end
    end
  end
end

solution = (numbers[0].to_i * numbers[1].to_i)
puts("Os 2 numeros que somam 2020 são: #{numbers}")
puts("A multiplicação desses numeros é: #{solution}")