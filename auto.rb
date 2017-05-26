class Mycar
	attr_accessor :color, :rendimineto
	def initialize(color, rendimineto)
		@color = color
		@rendimineto = rendimineto
	end

	def spray_paint(color)
		@color = color
	end

	#esto es un metodo de clase
	def self.gas_mileage(distancia, rendimineto)
		distancia/rendimineto
	end
end

car1 = Mycar.new("rojo", 13)
puts car1.color
car1.spray_paint("azul")
puts car1.color
puts car1.rendimineto
puts Mycar.gas_mileage(1500, car1.rendimineto)