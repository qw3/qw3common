function checkOrUncheckAll( to_be_checked ){
  to_be_checked = to_be_checked || false
  $( ".cid" ).prop( "checked", to_be_checked )
}

function definirAction( form, action, confirmation ) {
  resposta = true
  if( confirmation ) {
    resposta = confirm("Você tem certeza?")
  }
  if( resposta ) {
    $( "#" + form ).attr( "action", action);
    $( "#" + form ).submit();
  }
}

function definirOrdem( form, action, id ) {
  $( "#" + form ).attr( "action", action);
  $( "#cb" + id ).attr( "checked", true);
  $( "#" + form ).submit();
}
