func sieve(limit: Int) -> [Int] {
  // Write your code for the 'Sieve' exercise in this file.
    guard limit > 1  else { return [] }
    var answer: [Int] = []
    var sequence = Array(2...limit)
    
    while !sequence.isEmpty {
        answer.append(sequence[0])
        sequence.removeAll(where: { $0.isMultiple(of: answer.last!) })
    }
    
    return answer
}
