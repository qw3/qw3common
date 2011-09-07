$(function($) {
    $("#estado_id").change(function() {
        $.ajax({url: 'enderecos/gerar_combo_cidade',
        type: 'POST',
        data: 'estado=' + this.value + "&tipo=" + $("#tipo").val(),
        dataType: 'script'})
    });
});
