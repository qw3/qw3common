module MoneyHelper
  
  def currency_br_to_number(currency)
    return currency.to_s.gsub('R$', '').strip.gsub('.', '').gsub(',','.').to_f unless currency.nil?
  end
  
  def money_br_to_number(currency)
    return currency.to_s.strip.gsub('.', '').gsub(',','.').to_f unless currency.nil?
  end
  
  def number_to_money(number)
    return number_to_currency(number).gsub('R$', '').strip unless number.nil?
  end
  
end