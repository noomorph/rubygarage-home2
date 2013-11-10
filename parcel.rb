class Parcel

	def city(value = nil)
		@city = value if value
		@city
	end

	def house(value = nil)
		@house = value if value
		@house
	end

	def value(value = nil)
		@value = value if value
		@value
	end

	def street(value = nil)
		@street = value if value
		@street
	end

	def apartment(value = nil)
		@apartment = value if value
		@apartment
	end

	def address
		"#{city}\n#{street}\n#{house}/#{apartment}"
	end

	def to_s
		"Value: #{value}\n#{address}"
	end
end
