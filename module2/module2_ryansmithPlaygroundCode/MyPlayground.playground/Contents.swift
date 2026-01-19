import UIKit

//Dataset (array of tuples)
let students: [(name: String, grade: Double)] = [
    (name: "Molly",   grade: 92),
    (name: "Wolly",   grade: 76),
    (name: "Golly", grade: 88),
    (name: "Jolly",  grade: 34),
    (name: "Dolly",   grade: 95),
    (name: "Colly",  grade: 51)
]

//Summary Function - returns a tuple
func gradeSummary(
    for data: [(name: String, grade: Double)]
    ) -> (min: Double, max: Double, avg: Double) {

    var minGrade = data[0].grade
    var maxGrade = data[0].grade
    var total = 0.0

    for student in data {
        
    let g = student.grade
        
    if g < minGrade
        { minGrade = g }
    if g > maxGrade
        { maxGrade = g }
        
    total += g
        
    }

    let average = total / Double(data.count)
    return (min: minGrade, max: maxGrade, avg: average)
}

//Filter Function - uses a closure
func filterStudents(_ data: [(name: String, grade: Double)],
    using condition: ((name: String, grade: Double)) -> Bool
) -> [(name: String, grade: Double)] {
    return data.filter(condition)
}

//Run analysis
let summary = gradeSummary(for: students)

//Filter passing students (>= 60)
let passing = filterStudents(students) { student in
    student.grade >= 60
}

// Console Output
print("- Grade Summary -")
print("Min:", summary.min)
print("Max:", summary.max)
print("Avg:", summary.avg)

print("\n -Passing Students (>= 60)- ")
for student in passing {
    print("\(student.name): \(student.grade)")
}
