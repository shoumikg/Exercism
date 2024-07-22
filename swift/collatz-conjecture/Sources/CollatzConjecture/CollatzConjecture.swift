extension String: Error {}

class CollatzConjecture {
  
  static var answer = 0
    
  static func steps(_ number: Int) throws -> Int? {
    // Write your code for the 'Collatz Conjecture' exercise here.
      guard number > 0 else { throw "input zero or negative" }
      
      if number == 1 {
          let numberOfSteps = answer
          answer = 0
          return numberOfSteps
      } else if number.isMultiple(of: 2) {
          answer += 1
          return  try? steps(number/2)
      } else {
          answer += 1
          return try? steps(number*3 + 1)
      }
  }
}
