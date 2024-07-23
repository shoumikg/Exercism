enum QueenError: Error {
    case inValidRow
    case inValidColumn
}

class Queen {
    // Write your code for the 'Queen Attack' exercise in this file.
    let row: Int
    let column: Int
    
    init(row: Int, column: Int) throws {
        guard row >= 0 && row < 8 else { throw QueenError.inValidRow }
        guard column >= 0 && column < 8 else { throw QueenError.inValidColumn }
        self.row = row
        self.column = column
    }
    
    func canAttack(other: Queen) -> Bool {
        return other.row == self.row || other.column == self.column || ( abs(other.row - self.row) == abs(other.column - self.column))
    }
}
