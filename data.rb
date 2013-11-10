Post.send_parcel do
	city 'Dnipropetrovsk'
	street 'Karl Marks avenue'
	house '40A'
	apartment '25'
	value 11
end

Post.send_parcel do
	city 'Dnipropetrovsk'
	street 'Karl Marks avenue'
	house '40A'
	apartment '25'
	value 9
end

Post.send_parcel do
	city 'Kiev'
	street 'Khreshatyk street'
	house '1'
	apartment '5'
	value 9
end

Post.send_to_same_address { value 11 }
Post.send_to_same_address { value 9 }
