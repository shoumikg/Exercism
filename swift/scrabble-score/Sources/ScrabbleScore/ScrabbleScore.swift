func score(_ phrase: String) -> Int {
  // Write your code for the 'Scrabble Score' exercise in this file.
    var answer = 0
    for letter in phrase.uppercased() {
        if ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"].contains(letter) {
            answer += 1
        } else if ["D", "G"].contains(letter) {
            answer += 2
        } else if ["B", "C", "M", "P"].contains(letter) {
            answer += 3
        } else if ["F", "H", "V", "W", "Y"].contains(letter) {
            answer += 4
        } else if ["K"].contains(letter) {
            answer += 5
        } else if ["J", "X"].contains(letter) {
            answer += 8
        } else {
            answer += 10
        }
    }
    return answer
}
