// // Write your code for the 'Flatten-Array' exercise in this file.
var answer: [Int] = []

func flattenArray(_ input: [Any]) -> [Int] {
    guard !input.isEmpty else { return [] }
    for item in input {
        guard item != nil else { return [] }
        if let item = item as? Int {
            answer.append(item)
        } else if let item = item as? [Any] {
            answer = (flattenArray(item))
        }
    }
    let flattened = answer
    answer = []
    return flattened
}
