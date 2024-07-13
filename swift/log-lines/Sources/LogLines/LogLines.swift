// TODO: define the 'LogLevel' enum, its `init`, and its `shortFormat` method

enum LogLevel: Int {
    case trace = 0
    case debug = 1
    case info = 4
    case warning = 5
    case error = 6
    case fatal = 7
    case unknown = 42
    
    init(_ message: String) {
        let levelCode = String(message.prefix(6).dropFirst().dropLast(2))
        switch levelCode {
        case "TRC": self = .trace
        case "DBG": self = .debug
        case "INF": self = .info
        case "WRN": self = .warning
        case "ERR": self = .error
        case "FTL": self = .fatal
        default:
            self = .unknown
        }
    }
    
    func shortFormat(message: String) -> String {
        return "\(self.rawValue):" + message
    }
}
