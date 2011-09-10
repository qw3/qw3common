module BrHelper
  
  def create_alias apelido, nome
    if apelido.blank?
      return nome.remover_acentos.downcase.gsub(/ /, "_")
    end
  end
  
end
