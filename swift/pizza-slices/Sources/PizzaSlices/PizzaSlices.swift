func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    guard let diameter, let slices, diameter >= 0, slices >= 1 else {
        return nil
    }
    let radiusSquared = diameter*diameter/4
    return Double.pi*radiusSquared/Double(slices)
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
    var areaA: Double? = nil
    var areaB: Double? = nil
    
    if let diameterA = Double(diameterA), let slicesA = Int(slicesA) {
        areaA = sliceSize(diameter: diameterA, slices: slicesA)
    }
    
    if let diameterB = Double(diameterB), let slicesB = Int(slicesB) {
        areaB = sliceSize(diameter: diameterB, slices: slicesB)
    }
    
    if let areaA, let areaB {
        return areaA > areaB ? "Slice A is bigger" : areaA == areaB ? "Neither slice is bigger" : "Slice B is bigger"
    } else if let areaA {
        return "Slice A is bigger"
    } else if let areaB {
        return "Slice B is bigger"
    } else {
        return "Neither slice is bigger"
    }
}
