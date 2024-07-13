func toRna(_ dna: String) -> String {
  // Write your code for the 'Rna Transcription' exercise in this file.
    return String(dna.map { char in
            switch char {
            case "G": return "C"
            case "C": return "G"
            case "T": return "A"
            case "A": return "U"
            default: fatalError("Unexpected charater found in dna encoding")
            }
    })
}
