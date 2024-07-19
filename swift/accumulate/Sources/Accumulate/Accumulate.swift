//Solution goes in Sources
extension Array {
    func accumulate<T>(_ function: (Element) -> T) -> Array<T> {
        var answer: Array<T> = []
        for item in self {
            answer.append(function(item))
        }
        return answer
    }
}
