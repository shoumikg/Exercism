class Bob {
  static func response(_ message: String) -> String {
    // Write your code for the 'Bob' exercise in this file.
      var mutableMessage = message
      guard !mutableMessage.isEmpty else { return "Fine. Be that way!" }
      guard !mutableMessage.allSatisfy({$0.isWhitespace}) else {
          return "Fine. Be that way!"
      }
      
      for char in mutableMessage.reversed() {
          if char.isWhitespace {
              mutableMessage = String(mutableMessage.dropLast())
          } else {
              break
          }
      }
      
      if mutableMessage.last == "?" {
          if mutableMessage.uppercased() == mutableMessage && !mutableMessage.allSatisfy({!$0.isLetter}) {
              return "Calm down, I know what I'm doing!"
          } else {
              return "Sure."
          }
      } else if mutableMessage.uppercased() == mutableMessage && !mutableMessage.allSatisfy({!$0.isLetter}){
          return "Whoa, chill out!"
      } else {
          return "Whatever."
      }
  }
}
