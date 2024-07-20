enum HammingErrors: Error {
    case lengthMismatch
}

func compute(_ dnaSequence: String, against: String) throws -> Int? {
  // Write your code for the 'Hamming' exercise in this file.
    guard dnaSequence.count == against.count else { throw HammingErrors.lengthMismatch }
    var answer = 0
    for index in dnaSequence.indices {
        answer += dnaSequence[index] == against[index] ? 0 : 1
    }
    return answer
}
