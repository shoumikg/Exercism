let flip: ((String, String, String)) -> (String, String, String) = { (arg0: (String, String, String)) -> (String, String, String) in
    return (arg0.1, arg0.0, arg0.2)
}
//
//
let rotate: ((String, String, String)) -> (String, String, String) = { (arg) -> (String, String, String) in
    let (first, second, third) = arg
    return (second, third, first)
}

func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> (UInt8, (String, String, String)) -> (String, String, String) {
    let answer = { (id: UInt8, arg1: (String, String, String)) in
        var order = arg1
        var number = id
        for _ in 0..<8 {
            if (number&(0x01)) != 0 {
                order = rotator(order)
            } else {
                order = flipper(order)
            }
            number = number>>1
        }
        return order
    }
    return answer
}
