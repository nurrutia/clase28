class T
	@@instances = 0
	def initialize()
		@@instances +=1
	end
	def self.get_number_of_instances
		@@instances
	end
end
10.times do |i|
	T.new
end
puts T.get_number_of_instances