import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
    return poem.components(separatedBy: "\n")
}

func firstLetter(_ line: String) -> Character {
    guard line.indices.contains(line.startIndex) else { return "_" }
    return line[line.startIndex]
}

func capitalize(_ phrase: String) -> String {
    var answer = phrase.lowercased()
    answer.replaceSubrange(answer.startIndex...answer.startIndex, with: answer[answer.startIndex].uppercased())
    for (index, element) in phrase.enumerated() {
        if index != 0, phrase[phrase.index(phrase.startIndex, offsetBy: index-1)] == " " {
            answer.replaceSubrange(phrase.index(phrase.startIndex, offsetBy: index)...phrase.index(phrase.startIndex, offsetBy: index), with: element.uppercased())
        }
    }
    return answer
}

func trimSentence(_ line: String) -> String {
    var answer = line
    for char in line {
        if char.isWhitespace {
            answer = String(answer.dropFirst())
        } else {
            break
        }
    }
    var index = answer.index(before: answer.endIndex)
    while answer[index].isWhitespace {
        answer = String(answer.dropLast())
        index = answer.index(before: index)
    }
    return answer
}

func lastLetter(_ line: String) -> Character {
    guard line.count > 0, line.indices.contains(line.index(before: line.endIndex)) else { return "_"}
    let answer = line[line.index(before: line.endIndex)]
    return answer
}

func backDoorPassword(_ phrase: String) -> String {
  return capitalize(phrase) + ", please"
}

func ithLetter(_ line: String, i: Int) -> Character {
    guard i < line.count, line.indices.contains(line.index(line.startIndex, offsetBy: i)) else { return " " }
    return line[line.index(line.startIndex, offsetBy: i)]
}

func secretRoomPassword(_ phrase: String) -> String {
    return phrase.uppercased() + "!"
}
