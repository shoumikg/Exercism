enum Plants: Character {
    case grass = "G"
    case clover = "C"
    case radishes = "R"
    case violets = "V"
}

enum Students: String {
    case Alice
    case Bob
    case Charlie
    case David
    case Eve
    case Fred
    case Ginny
    case Harriet
    case Ileana
    case Joseph
    case Kincaid
    case Larry
    
    
    var index: Int {
        switch self {
        case .Alice:
            return 0
        case .Bob:
            return 1
        case .Charlie:
            return 2
        case .David:
            return 3
        case .Eve:
            return 4
        case .Fred:
            return 5
        case .Ginny:
            return 6
        case .Harriet:
            return 7
        case .Ileana:
            return 8
        case .Joseph:
            return 9
        case .Kincaid:
            return 10
        case .Larry:
            return 11
        }
    }
}

class Garden {
  // Write your code for the 'KindergartenGarden' exercise in this file.
    private let garden: String
    private let topRow: String
    private let bottomRow: String
    
    init(_ garden: String) {
        self.garden = garden
        topRow = String(garden.split(separator: "\n", omittingEmptySubsequences: true).first!)
        bottomRow = String(garden.split(separator: "\n", omittingEmptySubsequences: true).last!)
    }
    
    func plantsForChild(_ name: String) -> [Plants] {
        let studentIndex = Students(rawValue: name)?.index ?? 0
        let firstPlantIndex = topRow.index(topRow.startIndex, offsetBy: 2*studentIndex)
        let secondPlantIndex =  topRow.index(after: firstPlantIndex)
        return [Plants(rawValue: topRow[firstPlantIndex]) ?? .clover, Plants(rawValue: topRow[secondPlantIndex]) ?? .clover, Plants(rawValue: bottomRow[firstPlantIndex]) ?? .clover, Plants(rawValue: bottomRow[secondPlantIndex]) ?? .clover]
    }
}
