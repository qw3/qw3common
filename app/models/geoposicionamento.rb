require "httparty"
class Geoposicionamento
  
  include HTTParty
  format :xml
  
  def Geoposicionamento.posicao endereco
  
    # importando o helper por meio de um objeto
    # nao sei porque, mas o include nao funciona
    brHelper = Object.new.extend(BrHelper)

    # Validando se parametro realmente é um objeto da classe Endereco
    if !endereco.blank? and endereco.class.name.eql?( Endereco.name ) and !endereco.rua.blank?
    
      # Montando a url do webservice de geoposicionamento do google
      url = Settings["GEOPOSICIONAMENTO.url"] + brHelper.remover_caracteres_especiais( self.tratar_espacos( endereco.rua ) )
      url += "+" + brHelper.remover_caracteres_especiais( endereco.numero.to_s ) unless endereco.numero.blank?
      url += ",+" + brHelper.remover_caracteres_especiais( self.tratar_espacos( endereco.cidade.nome ) ) unless endereco.cidade_id.blank?
      url += ",+" + brHelper.remover_caracteres_especiais( endereco.cidade.estado.acronimo.upcase ) unless endereco.cidade.estado_id.blank?
      url += "&sensor=false" # Parametro obrigatorio para indicar que requisição não vem de dispositivo com sensor de localização
      
      # Realizando a requisição get
      resposta = Geoposicionamento.get( url )
      
      # Validando resposta
      if resposta.blank? or resposta["GeocodeResponse"].blank? or !resposta["GeocodeResponse"]["status"].eql?( "OK") or !resposta["GeocodeResponse"]["result"].include?("geometry")
        return nil
      end
      
      # Montando coordenadas no objeto de endereco
      endereco.latitude = resposta["GeocodeResponse"]["result"]["geometry"]["location"]["lat"]
      endereco.longitude = resposta["GeocodeResponse"]["result"]["geometry"]["location"]["lng"]
      
      return endereco
    end
    
    return nil
  end
  
  def Geoposicionamento.tratar_espacos texto
    return texto.remover_acentos.gsub( " ", "+" )
  end
  
end
