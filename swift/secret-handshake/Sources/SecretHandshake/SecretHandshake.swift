func commands(number: Int) -> [String] {
  // Write your code for the 'Secret Handshake' exercise in this file.
    var answer: [String] = []
    var mask = 0b00001
    var shiftedDecimal = 1
    for index in 1...5 {
        let temp = number & mask
        if temp == shiftedDecimal {
            switch index {
            case 1: answer.append("wink")
            case 2: answer.append("double blink")
            case 3: answer.append("close your eyes")
            case 4: answer.append("jump")
            case 5: answer = answer.reversed()
            default: fatalError()
            }
        }
        mask = mask << 1
        shiftedDecimal *= 2
    }
    return answer
}
