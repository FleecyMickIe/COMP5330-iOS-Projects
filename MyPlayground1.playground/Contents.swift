import UIKit

var greeting = "Hello, playground"
print(greeting)

var age = 25
print(age)

age = 26
print(age)

/**var numbers = (5+4)
if numbers >= (4+5) {
    print ("More than \(numbers), or = to \(numbers)")
}
else {
    print ("Less than 10")
}**/
func addNumbers(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func makeMultiplier(factor: Int) -> (Int) -> Int {
    func multiplier(_ number: Int) -> Int {
        return number * factor
    }
    return multiplier
    
}
let timesThree = makeMultiplier(factor: 3)
let result = timesThree(5)
print(result)


