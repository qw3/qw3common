# -*- encoding : utf-8 -*-
module BrHelper
  
  def icon_path( file_name, size )
  
    exts = { "bmp", "css", "csv", "doc", "docx", "eps", "gif", "html", "ico", "jpg", "js", "json", "mp3", "pdf", "php", "png", "ppt", "pptx", "psd", "svg", "swf", "tiff", "txt", "wav", "xls", "xlsx", "xml" }
    path = "images/icons/documents"
  
    # recuperando a extensão do arquivo
    file_name = file_name.split( "." )
    # Caso não tenha extensão, ícone padrão é o de txt
    if( file_name.length.eql? 1 )
      ext = "txt"
    else
      ext = file_name[ file_name.length - 1]
    end
    
    return "#{path}/#{size}/#{ext}_file.png"
  end
  
end
