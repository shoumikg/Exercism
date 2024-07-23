class Proverb {
    // Write your solution to the 'Proverb' exercise in this file.
    private let cuesForProverb: [String]
    
    init(_ cuesForProverb: [String]) {
        self.cuesForProverb = cuesForProverb
        
    }
    
    func recite() -> String {
        guard !cuesForProverb.isEmpty else { return "" }
        var answer = ""
        var index = cuesForProverb.startIndex
        while index < cuesForProverb.index(before: cuesForProverb.endIndex) {
            answer += "For want of a \(cuesForProverb[index]) the \(cuesForProverb[cuesForProverb.index(after: index)]) was lost.\n"
            index = cuesForProverb.index(after: index)
        }
        answer += "And all for the want of a \(cuesForProverb.first!)."
        return answer
    }
}
