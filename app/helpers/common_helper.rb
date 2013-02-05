# -*- encoding : utf-8 -*-
module CommonHelper
  
  def check_all_th()
    check_box_tag "check_all", '', false, { :onclick => "checkOrUncheckAll( $(\"#check_all\").prop( \"checked\" ) )" }
  end
  
  def check_all_td( id, checked = false )
    check_box_tag "cid[]", id, checked, { :id => "cb#{id}", :class => "cid" }
  end
  
  def ordem_th( model )
    link_to "#", :onclick => 'definirAction( "banners_form", "/administrator/#{model}/multi_ordenar" )', :class => "ordenar" do
      if Rails.application.config.assets.enabled
        image_tag "lib/qw3/salvar.gif"
      else
        image_tag "/images/icons/salvar.gif"
      end
    end
  end
  
  def ordenar_td id, model
    html = []
    html.push '<div class="ordem-setas">'
    
    if Rails.application.config.assets.enabled
      seta_baixo = image_tag( "lib/qw3/seta-baixo.png" )
      seta_cima = image_tag( "lib/qw3/seta-cima.png" )
    else
      seta_baixo = image_tag( "/images/seta-baixo.png" )
      seta_cima = image_tag( "/images/seta-cima.png" )
    end
    html.push link_to( seta_baixo, "#", :onclick => "definirOrdem( \"#{model}_form\", \"/administrator/#{model}/ordenar?cima=0\", #{id} )" )
    html.push link_to( seta_cima, "#", :onclick => "definirOrdem( \"#{model}_form\", \"/administrator/#{model}/ordenar?cima=1\", #{id} )" )
    
    html.push '</div>'
    
    return html.join('').html_safe
  end
  
  def alternar url, valor, remote = false
    if valor
      if Rails.application.config.assets.enabled
        imagem = image_tag( 'lib/qw3/publicado.png', :size => '16x16' )
      else
        imagem = image_tag( 'icons/publicado.png', :size => '16x16' )
      end
    else
      if Rails.application.config.assets.enabled
        imagem = image_tag( 'lib/qw3/sair.png', :size => '16x16' )
      else
        imagem = image_tag( 'icons/sair.png', :size => '16x16' )
      end
    end
    if remote
      link_to imagem, url, :remote => true
    else
      link_to imagem, url
    end
  end
  
end
