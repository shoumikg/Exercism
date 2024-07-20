//Solution goes in Sources
class ListOps {
    static func append<T>(_ first: Array<T>, _ second: Array<T>) -> Array<T> {
        var answer: Array<T> = []
        var index = 0
        
        while index < (first.count + second.count) {
            if index < first.count {
                answer.insert(first[index], at: index)
            } else {
                answer.insert(second[index - first.count], at: index)
            }
            index += 1
        }
        return answer
    }
    
    static func concat<T>(_ listOfArrays: Array<T>...) -> Array<T> {
        var answer: Array<T> = []
        for input in listOfArrays {
            answer = ListOps.append(answer, input)
        }
        return answer
    }
    
    static func filter<T>(_ input: Array<T>, predicate: (T) -> Bool) -> Array<T> {
        var answer: Array<T> = []
        for item in input {
            if predicate(item) {
                answer.insert(item, at: answer.count)
            }
        }
        return answer
    }
    
    static func length<T>(_ input: Array<T>) -> Int {
        var answer = 0
        for _ in input {
            answer += 1
        }
        return answer
    }
    
    static func map<T>(_ input: Array<T>, function: (T) -> T) -> Array<T> {
        var answer: Array<T> = []
        for item in input {
            answer.insert(function(item), at: answer.count)
        }
        return answer
    }
    
    static func foldLeft<T>(_ input: Array<T>, accumulated: T, combine: (T, T) -> T) -> T {
        var answer = accumulated
        for item in input {
            answer = combine(answer, item)
        }
        return answer
    }
    
    static func foldRight<T>(_ input: Array<T>, accumulated: T, combine: (T, T) -> T) -> T {
        var answer = accumulated
        for item in input.reversed() {
            answer = combine(item, answer)
        }
        return answer
    }
    
    static func reverse<T>(_ input: Array<T>) -> Array<T> {
        var answer: Array<T> = input
        var left = 0, right = answer.count - 1
        while left < right {
            answer.swapAt(left, right)
            left += 1
            right -= 1
        }
        return answer
    }
 }
