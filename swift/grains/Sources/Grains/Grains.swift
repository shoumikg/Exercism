import Foundation

enum GrainsError: Error {
    case inputTooHigh
    case inputTooLow
}

struct Grains {
    
  static var squares: [UInt64] = Array<UInt64>(0..<64)
    
  static func square(_ num: Int) throws -> UInt64 {
    // Write your code for the 'Grains' exercise in this file.
      guard num > 0 else { throw GrainsError.inputTooLow }
      guard num < 65 else { throw GrainsError.inputTooHigh }
      
      for index in squares.indices {
          if index == squares.startIndex {
              squares[index] = 1
          } else {
              squares[index] = squares[squares.index(before: index)] * 2
          }
      }
      return squares[num-1]
  }
    
    static var total: UInt64 {
        _ = try? square(1)
        return squares.reduce(0, +)
    }
}
