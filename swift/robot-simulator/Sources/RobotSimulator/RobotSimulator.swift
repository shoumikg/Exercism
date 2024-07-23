enum Bearing: Int {
    case north
    case east
    case south
    case west
}

class SimulatedRobot {
  // Write your code for the 'RobotSimulator' exercise in this file.
    
    struct State {
        var x: Int
        var y: Int
        var bearing: Bearing
        
        init(x: Int, y: Int, bearing: Bearing) {
            self.x = x
            self.y = y
            self.bearing = bearing
        }
        
        mutating func turnRight() {
            bearing = Bearing(rawValue: (bearing.rawValue+1)%4) ?? .north
        }
        
        mutating func turnLeft() {
            bearing = Bearing(rawValue: (4 + bearing.rawValue - 1) % 4) ?? .north
        }
        
        mutating func advance() {
            switch bearing {
            case .north:
                y += 1
            case .east:
                x += 1
            case .south:
                y -= 1
            case .west:
                x -= 1
            }
        }
    }
    
    var state: State
    
    init(x: Int, y: Int, bearing: Bearing) {
        self.state = State(x: x, y: y, bearing: bearing)
    }
    
    func move(commands: String) {
        guard !commands.isEmpty else { return }
        for char in commands {
            if char == "R" {
                state.turnRight()
            } else if char == "L" {
                state.turnLeft()
            } else {
                state.advance()
            }
        }
    }
}
