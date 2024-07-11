func getCard(at index: Int, from stack: [Int]) -> Int {
    if stack.isEmpty || index < 0 || index >= stack.count {
        fatalError("index out of bounds")
    }
    return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    if stack.isEmpty || index < 0 || index >= stack.count {
        return stack
    }
    var answer = stack
    answer[index] = newCard
    return answer
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    var answer = stack
    answer.append(newCard)
    return answer
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    if stack.isEmpty || index < 0 || index >= stack.count {
        return stack
    }
    var answer = stack
    _ = answer.remove(at: index)
    return answer
}

func removeTopCard(_ stack: [Int]) -> [Int] {
    if stack.isEmpty {
        return stack
    } else {
        var answer = stack
        _ = answer.removeLast()
        return answer
    }
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
    var answer = stack
    answer.insert(newCard, at: 0)
    return answer
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
    if stack.isEmpty {
        return stack
    } else {
        var answer = stack
        answer.remove(at: 0)
        return answer
    }
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
    return stack.count == size
}

func evenCardCount(_ stack: [Int]) -> Int {
    return stack.filter({ $0%2 == 0}).count
}
