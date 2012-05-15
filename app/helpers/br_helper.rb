module BrHelper
  
  def create_alias apelido, nome
    if apelido.blank?
      return nome.strip.remover_acentos.downcase.gsub(/ /, "_")
    else
      return apelido
    end
  end
  
  def string_date_br_to_date(date)
    if date.is_a? Date # já está no formato certo
      return date
    end
    
    date_split = date.to_s.split( '/' )
    if date_split.count == 1 
      if Date.valid?(date.to_s)
        return Date.strptime(date.to_s, "%Y-%m-%d")
      end
    else
      if Date.valid?(date.to_s)
        return Date.strptime(date.to_s, "%d/%m/%Y")
      end
    end
    return nil
    
  end
  
  def remover_caracteres_especiais( string )
    return string.remover_acentos.gsub(/[^a-zA-Z 0-9]/, "")
  end
  
end
