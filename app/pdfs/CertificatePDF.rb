class CertificatePDF < Prawn::Document
  def initialize(friends, user)
    super()
    @user = user
    @friends = friends
    @friends.each do |friend|
      if friend.user_id == user.id
        text "Name : #{friend.first_name} #{friend.last_name} ID: #{friend.user_id}", :style => :underline
      end
    end
  end
end
