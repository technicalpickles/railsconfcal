require 'icalendar'
require 'open-uri'

class RailsConfCal
  attr_accessor :cal
  def initialize
    cals = Icalendar.parse(open("http://en.oreilly.com/rails2009/public/schedule/ical"))
    self.cal = cals.first
  end

  def events
    cal.events
  end
end
