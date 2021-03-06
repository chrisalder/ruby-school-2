# El nombre, año y producción pueden ser leidos y modificados.
# La fecha de creación sólo puede ser leída.
class Movie
	attr_accessor :name, :year, :production, :created_at
	#attr_reader :created_at

  def initialize(name, options={})
    @name = name
    @year = options[:year]
    @production = options[:production]
    @created_at = Time.now
  end

  def build_message
    'La pelicula NOMBRE fue estrenada en AÑO por PRODUCCION.'
  end
end

movie_1 = Movie.new("Thor", options = {year: 2017, production: 'Disney'})
movie_1.year = 2011
movie_1.production = 'Marvel Studios'

# Resultado esperado:
# La película Thor fue estrenada en 2011 por Marvel Studios.
puts "La pelicula #{movie_1.name} fue estrenada en #{movie_1.year} por #{movie_1.production}." # Solución


movie_2 = Movie.new("Inception", options = {year: 2010, production: 'WB'})

# Descomenta la línea con created_at, cuando corras la aplicación debe fallar.
# Después de verificar que falla, coméntala de nuevo.


#created_at esta solo como lectura, no como escritura
movie_2.created_at = '2016-06-02'

# Resultado esperado:
# La película Inception fue estrenada en 2010 por WB.
puts "La pelicula #{movie_2.name} fue estrenada en #{movie_2.year} por #{movie_2.production}."# Solución
