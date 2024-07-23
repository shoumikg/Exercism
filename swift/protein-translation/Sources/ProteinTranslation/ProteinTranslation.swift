enum TranslationError: Error {
    case invalidCodon
}

enum Codons: String {
    case AUG //= ""
    case UUU, UUC //= ""
    case UUA, UUG //= ""
    case UCU, UCC, UCA, UCG //= ""
    case UAU, UAC //= ""
    case UGU, UGC //= ""
    case UGG //= ""
    case UAA, UAG, UGA //= "STOP"
    case invalidInput
}

func translationOfRNA(rna strand: String) throws -> [String] {
  // Write your code for the 'Protein Translation' exercise in this file.
    guard !strand.isEmpty else { return [] }
    var answer: [String] = []
    var mutableStrand = strand
    while !mutableStrand.isEmpty {
        let codon = Codons(rawValue: String(mutableStrand.prefix(3))) ?? .invalidInput
        switch codon {
        case .AUG: answer.append("Methionine")
        case .UUU, .UUC:
            answer.append("Phenylalanine")
        case .UUA, .UUG:
            answer.append("Leucine")
        case .UCU, .UCC, .UCA, .UCG:
            answer.append("Serine")
        case .UAU, .UAC:
            answer.append("Tyrosine")
        case .UGU, .UGC:
            answer.append("Cysteine")
        case .UGG:
            answer.append("Tryptophan")
        case .UAA, .UAG, .UGA:
            return answer
        case .invalidInput:
            throw TranslationError.invalidCodon
        }
        if !mutableStrand.dropFirst(3).isEmpty && mutableStrand
            .dropFirst(3).count < 3 {
            throw TranslationError.invalidCodon
        }
        mutableStrand = String(mutableStrand.dropFirst(3))
    }
    return answer
}
