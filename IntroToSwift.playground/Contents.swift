import UIKit

var str = "Hello, playground"
print(str)

var anotherSting:String

anotherSting = "hello"

anotherSting = "hello 2"

let aThirdString = anotherSting + str

//NOT ALLOWED!!
// aThirdString = "hi 2"

var interger = 10.0
var double = 10.1

var someNumber = interger * double

var number:Float = 8.5

let noStudents = 4
let noTeachers = 2
let averageScore = 0.85

var effectiveness = Double(noStudents) / Double(noTeachers) * averageScore

func effectivenessScore(numberOfStudents:Int, numberOfTeachers:Int, averageScore:Double) -> Double {

    return Double(numberOfStudents) / Double(numberOfTeachers) * averageScore
}

func name() {
    print("hello")
}

name()
name()

let result1:Double
result1 = effectivenessScore(5, numberOfTeachers: 2, averageScore: 0.66)
effectivenessScore(7, numberOfTeachers: 10, averageScore: 0.55)

class Student {
    let name:String
    let testScores:[Double]

    init(name:String, testScores:[Double]) {
        self.name = name
        self.testScores = testScores
    }

    func averageScore() -> Double {
        var total:Double = 0.0
        for testScore:Double in testScores {
            total = total + testScore
        }
        return total/Double(testScores.count)
    }

    func doubleAverageScore() -> Double {
        return averageScore() * 2
    }

    func knows() {
        print("I know stuff")
    }
}

class IOSStudent: Student {

    func writeSomeCode() {
        print("coding...")
    }

    override func knows() {
        super.knows()
        print("I know Swift")
    }
}

let jeremy = Student(name: "Jeremy", testScores: [0.99, 0.98, 0.99, 1.0])
let cory = Student(name: "Cory", testScores: [0.78, 0.88, 0.95])
//cory.knows()

let danny = IOSStudent(name: "danny", testScores: [0.0, 0.0, 0.0])
danny.knows()
danny.writeSomeCode()

jeremy.averageScore()
cory.averageScore()
cory.doubleAverageScore()



//let danny1 = Danny()
//
//print(danny1.name)
//
//let danny2 = Danny()
//
//print(danny2.name)
