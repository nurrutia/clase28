module Automotriz
	def hola
	 puts"yo soy el modulo" 
	end
end
class Vehicle
	#variable de clase
	@@instances = 0
	def initialize(cont)
		@@instances += cont
	end

	def self.gas_mileage(distancia, rendimineto)
		distancia/rendimineto
	end

	def self.contadordeinstacia
		@@instances
	end
end
class Mycar<Vehicle
	# extend métodos de clase
	# include métodos de instancia
	include Automotriz
		attr_accessor :color, :rendimineto
		#variable de clase
		@@NUMBER_OF_DOORS = 5
		def initialize(color, rendimineto)
			@color = color
			@rendimineto = rendimineto
			super(1)
		end
		
		def llamadoprivado
			edadvehiculo
		end

		private
		def edadvehiculo
			ahora = Time.now
			anoauto =  Time.new(2000)
			resultado = (ahora.year - anoauto.year)
			puts resultado
		end
		
end
class MyTruk<Vehicle
	attr_accessor :color, :rendimineto
		@@NUMBER_OF_DOORS = 5
	def initialize(color, rendimineto)		
		@color = color
		@rendimineto = rendimineto
		super(1)
	end
end


car1 = Mycar.new("rojo", 13)
truk1 = MyTruk.new("azul", 13)
puts car1.color
puts
puts truk1.color
puts
car1.hola
puts
puts Vehicle.contadordeinstacia
puts
puts Mycar.ancestors
puts
puts car1.llamadoprivado