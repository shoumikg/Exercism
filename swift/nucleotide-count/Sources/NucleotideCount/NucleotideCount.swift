enum NucleotideCountErrors: Error {
    case invalidNucleotide
}

class DNA {
  // Write your code for the 'NucleotideCount' exercise in this file.
    var strand = ""
    var answer = ["A": 0, "C": 0, "G": 0, "T": 0]
    
    init(strand: String) throws {
        guard strand.allSatisfy({ answer[String($0)] != nil }) else { throw NucleotideCountErrors.invalidNucleotide }
        self.strand = strand
    }
    
    func counts() -> [String:Int] {
        for char in strand {
            answer[String(char)]! += 1
        }
        return answer
    }
}
