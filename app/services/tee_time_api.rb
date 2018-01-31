class TeeTimeApi

  GOLFCOURSE_EMAILS = {'7072' =>'petter.fagerlund@gmail.com'}

  def self.get_tee_times(date)
    # date = if params[:usersdate] == nil then Date.today else params[:usersdate] end

    url = "https://www.teeoff.com/TeeTime/ByCourse?contactId=&includeInventory=true&includeDirectoryRegular=true&includeDirectorySpecial=true&includeGSSpecial=true&includeSoldTeeTimes=false&includeForeDirectory=true&includeGSCourse=true&includeGSBarter=true&enforceTimeRestrictions=true&enforcePriceRestrictions=true&showFeaturedCourses=true&beginTime=5%3A00+AM&endTime=11%3A59+PM&beginTimeIndex=-1&minPrice=0&maxPrice=999&sort=2&viewType=1&page=1&start=0&limit=100&view=course&chosenAmenities=any&chosenCourses=any&playDate=#{date}&hasCartIncluded=false&centerPointLon=-80.2264393&centerPointLat=25.7889689&courseIds=XHZDBFQMgCEMX4gAoCczeQ0fqCg0e%2FA%2BNCejv86UzDbxuqkLoEcIt6nAxizZ0XlU3rCKOYRJ7xoVUjgJC27vePFB1OUKvoBRM1QKLtXEbyQZmWTAhmaQxL%2B281XZQI8AXsUjdZZ7HaxmYtvJKK155t7vH1CMe1WyO7zwPuulSWpZ09L75QjMGLJATFq1feJxlrAsbpTBFae7gKf4B&calculateDistanceFromUser=0&_=1517069125758"

    response = HTTParty.get url

    body = response.body
    body[0] = ''
    body[-1] = ''
    body[-1] = ''
    JSON.parse(body)
  end
end
