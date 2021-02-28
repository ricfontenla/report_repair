class FetchNumbers

  #atributos
  attr_reader :numbers, :file, :mult

  #construtor
  def initialize(file)
    @file = file
    @numbers = fetch_numbers()
  end

  #metodos
  def mult()
    mult = (numbers[0].to_i * numbers[1].to_i * numbers[2].to_i)
    return mult
  end  
  
  #metodos privados
  private

  def fetch_numbers()
    file.each do |value1|
      file.each do |value2|
        file.each do |value3|
          if (value1 != value2 && value2 != value3 && value1 != value3)
            if (value1.to_i + value2.to_i + value3.to_i == 2020)
              return value1, value2, value3
            end
          end
        end
      end
    end    
  end

end