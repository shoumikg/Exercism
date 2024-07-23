enum Classification {
  case perfect
  case abundant
  case deficient
}

enum ClassificationError: Error {
    case invalidInput
}

func classify(number: Int) throws -> Classification {
  // Write your code for the 'Perfect Numbers' exercise in this file.
    guard number > 0 else { throw ClassificationError.invalidInput }
    guard number > 1 else { return .deficient }
    var aliquotSum = 1
    for item in 2..<number {
        if item > number/item {
            break
        }
        
        if number.isMultiple(of: item) {
            if item == number/item {
                aliquotSum += item
                break
            }
            aliquotSum += item + number/item
        }
    }
    
    if aliquotSum > number {
        return .abundant
    } else if aliquotSum < number {
        return .deficient
    } else {
        return .perfect
    }
}
