module Converter 

  DOLAR = 5.20
  EURO = 5.54

  def real_to_dolar(real_value)
    puts "> Em real #{real_value} - em dólar: #{real_value / DOLAR}"
  end

  def real_to_euro(real_value)
    puts "> Em real #{real_value} - em euro: #{real_value / DOLAR}"
  end

  def dolar_to_real(dolar_value)
    puts "> Em dolar #{dolar_value} - em real #{dolar_value * DOLAR}"
  end

  def euro_to_real(euro_value)
    puts "> Em euro #{euro_value} - em real #{euro_value * EURO}"
  end
end