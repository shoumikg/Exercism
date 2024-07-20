import Foundation

struct Clock: Equatable {
  // Write your code for the 'Clock' exercise in this file.
    var hoursOnTheClock: Int
    var minutesOnTheClock: Int
    
    init(hours: Int, minutes: Int) {
        minutesOnTheClock = (60 + minutes%60) % 60
        hoursOnTheClock = (24 + (hours+minutes/60)%24) % 24
        if minutes < 0 && !minutes.isMultiple(of: 60) {
            hoursOnTheClock = (24 + hoursOnTheClock - 1) % 24
        }
    }
    
    var description: String {
        return "\(String(format: "%02d", hoursOnTheClock)):\(String(format: "%02d", minutesOnTheClock))"
    }
    
    func add(minutes: Int) -> Clock {
        return Clock(hours: hoursOnTheClock, minutes: minutes+minutesOnTheClock)
    }
    
    func subtract(minutes: Int) -> Clock {
        return Clock(hours: hoursOnTheClock, minutes: minutesOnTheClock-minutes)
    }
}
