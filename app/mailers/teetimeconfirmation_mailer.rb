class TeetimeconfirmationMailer < ApplicationMailer
  default from: "hoorayfun123@gmail.com"
  puts "***** UserMailer initialized"
  def send_booking_email(golfcourse)
    @golfcourse = golfcourse
    mail(to: @golfcourse, subject: "Congratulations, a golfer has reserved a tee time at your course")
    puts "welcome_email action fired"
  end
end
