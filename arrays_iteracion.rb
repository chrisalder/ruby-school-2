puts "Utiliza el metodo each para sacar el promedio de las calificaciones"
# HINT: Declara una variable antes, para sumar ahí el valor de cada iteración.

calificaciones = [10, 8, 9, 5, 8, 10, 8]

x = 0
calificaciones.each do |calif|
   x = x + calif
end

promedio = x.to_f / calificaciones.count

# HINT: Existe un metodo para saber el tamaño de un objeto, buscalo!
# El promedio debe ser similar a 8.28, tiene que llevar decimales.
puts promedio
