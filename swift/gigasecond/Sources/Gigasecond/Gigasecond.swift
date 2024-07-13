import Foundation

func gigasecond(from: Date) -> Date {
  // Write your code for the 'Gigasecond' exercise in this file.
    from.addingTimeInterval(TimeInterval(1_000_000_000))
}
