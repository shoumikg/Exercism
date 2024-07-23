enum PhoneNumberError: Error {
    case invalidPhoneNumber
    
}

class PhoneNumber {
    // Write your code for the 'PhoneNumber' exercise in this file.
    let phone: String
    
    init(_ phone: String) {
        self.phone = phone
    }
    
    func clean() throws -> String {
        var answer = phone.filter({ $0.isNumber })
        guard !answer.isEmpty else {
            throw PhoneNumberError.invalidPhoneNumber
        }
        if answer.count == 11 {
            if answer.first != "1" {
                throw PhoneNumberError.invalidPhoneNumber
            }
            answer = String(answer.dropFirst())
        } else if answer.count != 10 {
            throw PhoneNumberError.invalidPhoneNumber
        }
        if answer.first == "1" || answer.first == "0" {
            throw PhoneNumberError.invalidPhoneNumber
        }
        if answer[answer.index(answer.startIndex, offsetBy: 3)] == "1" || answer[answer.index(answer.startIndex, offsetBy: 3)] == "0" {
            throw PhoneNumberError.invalidPhoneNumber
        }
        return answer
    }
}
