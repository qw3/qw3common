$("#estado_id").live( "change", function() {
  $.ajax({url: '/enderecos/gerar_combo_cidade',
  type: 'POST',
  data: 'estado=' + this.value + "&tipo=" + $("#tipo").val(),
  dataType: 'script'})
});

$('#cliente_endereco_attributes_cep').live('blur', function() {
  if( $('#cliente_endereco_attributes_cep').val() != "" ) {
    $.ajax({
		  url: "/enderecos/atualiza_dados_cep?objeto='cliente'", 
		  method: "get",
		  data: {
			  cep: $('#cliente_endereco_attributes_cep').val()
		  },
		  beforeSend: function() {
			  $('#cliente_endereco_attributes_cep').parent().append('<span><img src="/images/barra-16.gif" alt="Carregando..." /></span>');
		  }
	  });
  }
});
