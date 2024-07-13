class Squares {
  // Write your code for the 'Difference Of Squares' exercise here.
    private let n: Int
    
    init(_ n: Int) {
        self.n = n
    }
    
    var sumOfSquares: Int {
        var answer = 0
        for num in 1...n {
            answer += num*num
        }
        return answer
    }
    
    var squareOfSum: Int {
        let temp = (n*(n+1))/2
        return temp*temp
    }
    
    var differenceOfSquares: Int {
        return squareOfSum - sumOfSquares
    }
}
