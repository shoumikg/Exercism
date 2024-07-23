class IsbnVerifier {
  static func isValid(_ string: String) -> Bool {
    // Write your code for the 'IsbnVerifier' exercise in this file.
      let hyphensRemoved = string.filter({ $0 != "-" })
      guard !hyphensRemoved.isEmpty, hyphensRemoved.count == 10, hyphensRemoved.allSatisfy({ $0.isNumber || ($0 == "X" && hyphensRemoved.firstIndex(of: $0) == hyphensRemoved.index(before: hyphensRemoved.endIndex)) }) else { return false }
      var isbnSum = 0
      for (index, char) in hyphensRemoved.enumerated() {
          let number = char == "X" ? 10 : Int(String(char)) ?? 0
          isbnSum += (10-index)*number
      }
      return isbnSum % 11 == 0
  }
}
