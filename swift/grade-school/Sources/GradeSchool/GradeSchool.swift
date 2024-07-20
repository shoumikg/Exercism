class GradeSchool {
  // Write your code for the 'GradeSchool' exercise in this file.
    var students: [Int:[String]] = [:]
    
    func addStudent(_ name: String, grade: Int) -> Bool {
        guard !(students.values.contains(where: { $0.contains(where: { $0 == name })})) else { return false }
        if let _ = students[grade] {
            students[grade]?.append(name)
            students[grade]?.sort()
        } else {
            students[grade] = [name]
        }
        return true
    }
    
    func roster() -> [String] {
        var answer: [String] = []
        students.keys.sorted().forEach({ answer.append(contentsOf: students[$0] ?? []) })
        return answer
    }
    
    func studentsInGrade(_ grade: Int) -> [String] {
        guard let gradeList = students[grade] else { return [] }
        return gradeList
    }
}
