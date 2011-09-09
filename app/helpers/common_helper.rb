# -*- encoding : utf-8 -*-
module CommonHelper
  
  def check_all_th()
    check_box_tag "check_all", '', false, { :onclick => "checkOrUncheckAll( $(\"#check_all\").attr( \"checked\" ) )" }
  end
  
  def check_all_td( id )
    check_box_tag "cid[]", id, false, { :id => "cb#{id}", :class => "cid" }
  end
  
  def ordem_th( model )
    link_to "#", :onclick => 'definirAction( "banners_form", "/administrator/#{model}/multi_ordenar" )', :class => "ordenar" do
      image_tag "/images/icons/salvar.gif"
    end
  end
  
  def ordenar_td id, model
    html = []
    html.push '<div class="ordem-setas">'
    html.push link_to( image_tag( "/images/seta-baixo.png" ), "#", :onclick => "definirOrdem( \"#{model}_form\", \"/administrator/#{model}/ordenar?cima=0\", #{id} )" )
    html.push link_to( image_tag( "/images/seta-cima.png" ), "#", :onclick => "definirOrdem( \"#{model}_form\", \"/administrator/#{model}/ordenar?cima=1\", #{id} )" )
    html.push '</div>'
    
    return html.join('').html_safe
  end
  
  def alternar url, valor
    if valor
      imagem = image_tag 'icons/publicado.png', :size => '16x16'
    else
      imagem = image_tag 'icons/sair.png', :size => '16x16'
    end
    link_to imagem, url
  end
  
end
