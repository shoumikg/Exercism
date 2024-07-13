class Year {
  // Write your code for the 'Leap' exercise in this file.
    private let calendarYear: Int
    
    init(calendarYear: Int) {
        self.calendarYear = calendarYear
    }
    
    var isLeapYear: Bool {
        return calendarYear.isMultiple(of: 100) ? calendarYear.isMultiple(of: 400) : calendarYear.isMultiple(of: 4)
    }
}
