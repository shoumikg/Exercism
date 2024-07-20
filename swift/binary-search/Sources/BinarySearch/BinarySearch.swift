enum BinarySearchError: Error {
    case valueNotFound
}

class BinarySearch {
  // Write your code for the 'BinarySearch' exercise in this file.
    let list: Array<Int>
    init(_ list: Array<Int>) {
        self.list = list
    }
    
    func searchFor(_ item: Int) throws -> Int {
        var left = 0
        var right = list.count - 1
        
        while left <= right {
            let mid = (left+right)/2
            if list[mid] == item {
                return mid
            }
            if list[mid] > item {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        throw BinarySearchError.valueNotFound
    }
}
