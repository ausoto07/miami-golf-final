class TeetimeconfirmationMailer < ApplicationMailer
  default from: "hoorayfun123@gmail.com"
  puts "***** UserMailer initialized"





  def send_booking_email(golfcourse_id, teetime, name, email, telephone )
    @golfcourse = golfcourse_id
    @teetime = teetime
    @name = name
    @email = email
    @telephone = telephone
    
    mail(to: @golfcourse, subject: "Congratulations, a new reservation!")
    puts "welcome_email action fired"
  end
end
