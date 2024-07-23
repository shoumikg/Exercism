//Solution goes in Sources
class Robot {
    var name: String
    
    init() {
        let alphabets: [Character] = (97...122).map({Character(UnicodeScalar($0))})
        let digits = [0,1,2,3,4,5,6,7,8,9]
        self.name =  String(alphabets.randomElement()!).uppercased() + String(alphabets.randomElement()!).uppercased() + String(digits.randomElement()!) + String(digits.randomElement()!) + String(digits.randomElement()!)
    }
    
    func resetName() {
        let new = Robot()
        self.name = new.name
    }
}
