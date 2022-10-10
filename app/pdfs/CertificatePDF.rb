class CertificatePDF < Prawn::Document
	def initialize(friends)
		
		super()
		@friends = friends;
		@friends.each do |friend|
			text "Name : #{friend.first_name} #{friend.last_name} ";
		end
	end
end