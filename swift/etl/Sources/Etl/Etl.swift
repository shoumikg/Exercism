class ETL {
  static func transform(_ old: [String: [String]]) -> [String: Int] {
    // Write your code for the 'Etl' exercise in this file.
      var answer: [String: Int] = [:]
      for (score,letters) in old {
          letters.forEach({ answer[$0.lowercased()] = Int(score) })
      }
      return answer
  }
}
