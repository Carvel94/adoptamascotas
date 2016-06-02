module ApplicationHelper
	def humanizar_sexo(tipo)
		tipo==true ? "Masculino" : "Femenino"
	end

	def humanizar_fecha_corta(fecha)
		fecha.strftime("%d/%m/%Y") if !fecha.blank?
	end
end
