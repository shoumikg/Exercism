enum CircularBufferError: Error {
    case bufferEmpty
    case bufferFull
}

typealias T = Int

struct CircularBuffer {
  // Write your code for the 'CircularBuffer' exercise in this file.
    let capacity: Int
    var head, tail: Int
    var buffer: [T?]
    
    init(capacity: Int) {
        self.capacity = capacity
        self.buffer = Array(repeating: nil, count: capacity)
        self.head = -1
        self.tail = -1
    }
    
    private var isEmpty: Bool {
        return buffer.allSatisfy({ $0 == nil })
    }
    
    private var isFull: Bool {
        return !buffer.contains(where: { $0 == nil })
    }
    
    mutating func read() throws -> T {
        guard !isEmpty else {
            throw CircularBufferError.bufferEmpty
        }
        let answer = buffer[head]!
        buffer[head] = nil
        head = (head + 1) % capacity
        return answer
    }
    
    mutating func write(_ item: T) throws {
        guard !isFull else {
            throw CircularBufferError.bufferFull
        }
        tail = (tail + 1) % capacity
        head = head == -1 ? 0 : head
        
        buffer[tail] = item
    }
    
    mutating func clear() {
        buffer = Array(repeating: nil, count: capacity)
        head = -1
        tail = -1
    }
    
    mutating func overwrite(_ item: Int) {
        if isFull {
            buffer[head] = item
            head = (head + 1) % capacity
            tail = (tail + 1) % capacity
        } else {
            try! write(item)
        }
    }
}
