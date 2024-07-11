func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    if price/60 <= monthlyBudget {
        return "Yes! I'm getting a \(vehicle)"
    } else if price/60 <= monthlyBudget + 0.1*monthlyBudget {
        return "I'll have to be frugal if I want a \(vehicle)"
    } else {
        return "Darn! No \(vehicle) for me"
    }
  fatalError("Please implement the canIBuy(vehicle:price:monthlyBudget:) function")
}

func licenseType(numberOfWheels wheels: Int) -> String {
    switch wheels {
    case 2,3: return "You will need a motorcycle license for your vehicle"
    case 4,6: return "You will need an automobile license for your vehicle"
    case 18: return "You will need a commercial trucking license for your vehicle"
    default: return "We do not issue licenses for those types of vehicles"
    }
  fatalError("Please implement licenseType(numberOfWheels:) function")
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
    if yearsOld < 3 {
        return Int((Double(originalPrice)*0.8).rounded())
    } else if yearsOld >= 10 {
        return Int((Double(originalPrice)*0.5).rounded())
    } else {
        return Int((Double(originalPrice)*0.7).rounded())
    }
  fatalError("Please implement calculateResellPrice(originalPrice:yearsOld:) function")
}
