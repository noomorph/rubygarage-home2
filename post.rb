class Post
	@@parcels = []

	class << self
		def parcels
			@@parcels
		end

		def send_parcel(&block)
			parcel = Parcel.new
			parcel.instance_eval(&block)
			@@parcels.push(parcel)
		end

		def send_to_same_address(&block)
			parcel = @@parcels.last.clone
			parcel.instance_eval(&block)
			@@parcels.push(parcel)
		end


		def number_of_parcels_sent_to(city)
			parcels.select { |parcel| parcel.city == city }.count
		end

		def how_many_parcels_were_sent_with_value_higher_than(value)
			parcels.select { |parcel| parcel.value > value }.count
		end

		def what_is_the_most_popular_address?
			parcels.
				group_by(&:address).
				sort_by { |address, parcels| -parcels.count }.
				first[0]
		end
	end
end
