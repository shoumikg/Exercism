enum Drinks: String {
    case beer
    case soda
    case water
    case shot
    case mixed = "mixed drink"
    case frozen = "frozen drink"
    case fancy = "fancy drink"
    
    var timeRequired: Double {
        switch self {
        case .beer, .soda, .water: return 0.5
        case .shot: return 1.0
        case .mixed: return 1.5
        case .fancy: return 2.5
        case .frozen: return 3.0
        }
    }
}

enum Limes: String {
    case small
    case medium
    case large
    
    var wedgesAvailable: Int {
        switch self {
        case .small: return 6
        case .medium: return 8
        case .large: return 10
        }
    }
}

func timeToPrepare(drinks: [String]) -> Double {
    var answer = 0.0
    for drink in drinks {
        answer += Drinks(rawValue: drink)?.timeRequired ?? 0.0
    }
    return answer
}

func makeWedges(needed: Int, limes: [String]) -> Int {
    var wedgesCutTillNow = 0
    var limesUsed = 0
    while wedgesCutTillNow < needed && limesUsed < limes.count {
        wedgesCutTillNow += Limes(rawValue: limes[limesUsed])?.wedgesAvailable ?? 0
        limesUsed += 1
    }
    return limesUsed
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
    var answer = remainingOrders
    var timeLeft = Double(minutesLeft)
    var index = 0
    while timeLeft > 0 && index < remainingOrders.count {
        timeLeft -= timeToPrepare(drinks: remainingOrders[index])
        index += 1
        answer = [[String]](answer.dropFirst())
    }
    return answer
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
    var firstBeer = Int.max
    var lastBeer = 0
    var firstSoda = Int.max
    var lastSoda = 0
    var totalBeer = 0
    var totalSoda = 0
    let beerAndSodaOrders = orders.filter({ Drinks(rawValue: $0.drink) == .beer || Drinks(rawValue: $0.drink) == .soda})
    for order in beerAndSodaOrders {
        guard let hours = Int(order.time.dropLast(3)),
                let minutes = Int(order.time.dropFirst(3)) else { fatalError("invalid input")}
        let time = Int(hours*100 + minutes)
        switch Drinks(rawValue: order.drink) {
        case .beer:
            lastBeer = time > lastBeer ? time : lastBeer
            firstBeer = time < firstBeer ? time : firstBeer
            totalBeer += 1
        case .soda:
            lastSoda = time > lastSoda ? time : lastSoda
            firstSoda = time < firstSoda ? time : firstSoda
            totalSoda += 1
        default:
            fatalError("couldn't filter beer and soda")
        }
    }
    return ( totalBeer > 0 ? (getTimeInString(timeInDouble: firstBeer), getTimeInString(timeInDouble: lastBeer), totalBeer) : nil, totalSoda > 0 ? (getTimeInString(timeInDouble: firstSoda), getTimeInString(timeInDouble: lastSoda), totalSoda) : nil)
}

func getTimeInString(timeInDouble: Int) -> String {
    return String(timeInDouble).dropLast(2) + ":" + String(timeInDouble).dropFirst(2)
}
