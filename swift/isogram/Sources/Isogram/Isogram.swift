func isIsogram(_ string: String) -> Bool {
  // Write your code for the 'Isogram' exercise in this file.
    var letters: [Character: Int] = [:]
    for char in string.uppercased() {
        if letters[char] != nil {
            letters[char] = letters[char]! + 1
        } else {
            letters[char] = 1
        }
    }
    return letters.keys.allSatisfy({ letters[$0] ?? 0 < 2 || !$0.isLetter })
}
