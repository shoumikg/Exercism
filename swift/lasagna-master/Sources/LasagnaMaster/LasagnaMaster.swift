// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
    guard expectedMinutesInOven > elapsedMinutes else { return 0 }
    return expectedMinutesInOven - elapsedMinutes
}

// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: String...) -> Int {
    return 2*layers.count
}

// TODO: define the 'quantities' function
func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
    return (layers.filter({ $0 == "noodles"}).count*3, Double(layers.filter({ $0 == "sauce"}).count)*0.2)
}

// TODO: define the 'toOz' function
func toOz(_ amount: inout (noodles: Int, sauce: Double)) {
    amount.sauce *= 33.814
}

// TODO: define the 'redWine' function
func redWine(layers: String...) -> Bool {
    func countIngredient(layers: [String], ingredient: String) -> Int {
        return layers.filter({$0 == ingredient}).count
    }
    return (countIngredient(layers: layers, ingredient: "mozzarella") +
    countIngredient(layers: layers, ingredient: "ricotta") +
    countIngredient(layers: layers, ingredient: "béchamel")) <= (countIngredient(layers: layers, ingredient: "sauce") + countIngredient(layers: layers, ingredient: "meat"))
}
