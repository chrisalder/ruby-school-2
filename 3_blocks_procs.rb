# Crea una función llamada verificar_bloque
# Revisa si recibe un bloque, en caso de recibirlo, manda a llamar tu bloque.
# En caso de no recibirlo imprime "Yo no tengo un bloque".

def verificar_bloque
  if !block_given? 
  	puts "Yo no tengo un bloque"
  else
  	yield
  end
end

# escribe tu funcion

verificar_bloque { puts "Ya llegué amá" }
verificar_bloque

puts '======'

# Ahora crea una función muy similar que reciba dos
# parámetros: "accion" y un proc (llámalo como gustes).
# Si la acción es di_hola, manda llamar al bloque.
# Si no lo es, imprime "Suerte para la proxima"

def verificar_accion(accion, &this_is_proc)
  if(accion == :di_hola)
	puts block_given?
  	this_is_proc.call
  else
  	puts "Suerte para la proxima"
  end

  
end

# escribe tu funcion


verificar_accion(:di_hola) { puts "Hola a todos" }
verificar_accion(:di_adios) { puts "Ahorita no joven" }

# El resultado esperado es:
# Ya llegué amá
# Yo no tengo un bloque
# ======
# Hola a todos
# Suerte para la proxima
