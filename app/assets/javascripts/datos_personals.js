$(document).ready(function() {
  return $(".estado_seleccionado").on("change", function() {
    return $.ajax({
      url: "/datos_personals/obtener_ciudades/" + $('.estado_seleccionado option:selected').val(),
      type: "GET",
      dataType: "script",
      data: {
        estado_id: $('.estado_seleccionado option:selected').val()
      }
    });
  });
});