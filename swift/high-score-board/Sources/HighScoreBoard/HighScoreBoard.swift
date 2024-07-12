func newScoreBoard() -> [String: Int] {
    return [String:Int]()
}

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
    scores[name] = score
}

func removePlayer(_ scores: inout [String: Int], _ name: String) {
    guard let _ = scores[name] else { return }
    scores.removeValue(forKey: name)
}

func resetScore(_ scores: inout [String: Int], _ name: String) {
    guard let _ = scores[name] else { return }
    scores[name] = 0
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
    guard var item = scores[name] else { return }
    scores[name] = item + delta
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
    var answer = scores
    return answer.sorted(by: {$0.key < $1.key})
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
    var answer = scores
    return answer.sorted(by: {$0.value > $1.value})
}
