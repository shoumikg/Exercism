class Diamond {
  static func makeDiamond(letter: Character) -> [String] {
    // Write your code for the 'Diamond' exercise here.
      let inputIndexInAlphabets = letter.asciiValue! - Character("A").asciiValue!
      let numberOfAlphabetsInDiamond = inputIndexInAlphabets + 1
      let totalNumberOfRows = 2*numberOfAlphabetsInDiamond - 1
      var answer: [String] = []
      for rowIndex in 0...inputIndexInAlphabets {
          var outputRow: String = ""
          let outputAlphabet = String(UnicodeScalar(UInt8(UnicodeScalar("A").value) + rowIndex))
          for alphabetIndex in 0..<totalNumberOfRows {
              if alphabetIndex == inputIndexInAlphabets + rowIndex || alphabetIndex == inputIndexInAlphabets - rowIndex {
                  outputRow += outputAlphabet
              } else {
                  outputRow += " "
              }
          }
          if rowIndex == inputIndexInAlphabets {
              let reversed = Array(answer.reversed())
              answer.append(outputRow)
              answer += reversed
              break
          } else {
              answer.append(outputRow)
          }
      }
      return answer
  }
}
