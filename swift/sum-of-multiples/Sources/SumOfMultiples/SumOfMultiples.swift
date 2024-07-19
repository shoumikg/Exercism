func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
  // Write your code for the 'SumOfMultiples' exercise in this method.
    var setOfMultiples = Set<Int>()
    for baseValue in inMultiples {
        let temp = Array<Int>(1..<limit).filter({$0.isMultiple(of: baseValue)})
        temp.forEach({setOfMultiples.insert($0)})
    }
    var answer = 0
    setOfMultiples.forEach({ answer += $0})
    return answer
}
