func raindrops(_ number: Int) -> String {
    // Write your code for the 'Raindrops' exercise in this file.
    var answer = ""
    if number.isMultiple(of: 3) {
        answer += "Pling"
    }
    if number.isMultiple(of: 5) {
        answer += "Plang"
    }
    if number.isMultiple(of: 7) {
        answer += "Plong"
    }
    if answer.isEmpty {
        answer = "\(number)"
    }
    return answer
}
