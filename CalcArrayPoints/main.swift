//
//  main.swift
//  CalcArrayPoints
//
//  Created by Austin Brovick  on 10/11/17.
//  Copyright © 2017 Austin Brovick . All rights reserved.
//

import Foundation


// Build Calculator
// create four functions for add, subtract, multiply, divide

func add (_ a: Int, _ b: Int) -> Int {
    return a + b
}

func add (a: Int, b: Int) -> Int {
    return a + b
}

func subtract (_ a: Int, _ b: Int) -> Int {
    return a - b
}

func divide (_ a: Int, _ b: Int) -> Double {
    return (1.0*Double(a)) / Double(b)
}

func multiply (_ a: Int, _ b: Int) -> Int {
    return a * b
}


// create a function that expects one of them along with two ints
func mathOp(_ left : Int, _ right : Int, _ op : (Int, Int) -> Int) -> Int {
    return op(left, right)
}

print(mathOp(10, 5, add(a:b:)))




// Array fun
// create two new functions for add/mul
func add (_ numbers : [Int]) -> Double {
    var sum = 0
    for i in numbers {
        sum+=i
    }
    return Double(sum)
}

//func add (_ numbers : [Int]) -> Int {
//    var sum = 0
//    for i in numbers {
//        sum+=i
//    }
//    return sum
//}

func add (_ numbers : [Double]) -> Double {
    var sum = 0.0
    for i in numbers {
        sum+=i
    }
    return sum
}



func mul (_ numbers: [Int]) -> Double {
    var sum = 1
    for i in numbers {
        sum*=i
    }
    return Double(sum)
}

//func mul (_ numbers: [Int]) -> Int {
//    var sum = 1
//    for i in numbers {
//        sum*=i
//    }
//    return sum
//}

func mul (_ numbers: [Double]) -> Double {
    var sum = 1.0
    for i in numbers {
        sum*=i
    }
    return sum
}



// create two new functions (count, avg) that take an array if Ints
func count (_ numbers: [Int]) -> Double {
    return Double(numbers.count)
}

func count (_ numbers: [Double]) -> Int {
    return numbers.count
}


func avg (_ numbers: [Int]) -> Double {
    return Double(add(numbers)) / Double(count(numbers))
}

func avg (_ numbers: [Double]) -> Double {
    return Double(add(numbers)) / Double(count(numbers))
}


//let ar : [Int] = [1, 2, 3, 4]
//print(avg(ar))
//
//
//print(math("multiply", ar))
//print(subtract(10, 4))




// refactor all down to a generic math operation approach

func math (_ hello: String, _ numbers: [Int]) -> Double {
    if (hello == "count") {
        return count(numbers)
    } else if (hello == "avg") {
        return avg(numbers)
    } else if (hello == "multiply") {
        return mul(numbers)
    } else if (hello == "add") {
        return add(numbers)
    } else {
        return 0.0
    }
}

func math (_ hello: String, _ numbers: [Double]) -> Double {
    if (hello == "count") {
        return Double(count(numbers))
    } else if (hello == "avg") {
        return avg(numbers)
    } else if (hello == "multiply") {
        return mul(numbers)
    } else if (hello == "add") {
        return add(numbers)
    } else {
        return 0.0
    }
}


// Points
func addPoints(_ p1: (x: Int, y: Int), _ p2: (x: Int, y: Int)) -> (Int, Int) {
    return (p1.x + p2.x, p1.y + p2.y)
}

func subtractPoints(_ p1: (x: Int, y: Int), _ p2: (x: Int, y: Int)) -> (Int, Int) {
    return (p1.x - p2.x, p1.y - p2.y)
}

// points as tuples
var p1 = (x: 4, y: 5)
var p2 = (x: 4, y: 5)
print(addPoints(p1, p2))
print(subtractPoints(p1, p2))

// points as dictionaries

func addPointsD(_ p1: Dictionary<String, Int>, _ p2: Dictionary<String, Int>) -> Dictionary<String, Int> {
    let x1 = p1["x"] != nil
    let x2 = p2["x"] != nil
    let y1 = p1["y"] != nil
    let y2 = p2["y"] != nil
    if (x1 && x2 && y1 && y2) {
        return [
            "x": p1["x"]! + p2["x"]!,
            "y": p1["y"]! + p2["y"]!
        ]
    } else {
        return [
            "x": -100000,
            "y": -100000
        ]
    }

}


func subtractPointsD(_ p1: Dictionary<String, Int>, _ p2: Dictionary<String, Int>) -> Dictionary<String, Int> {
    let x1 = p1["x"] != nil
    let x2 = p2["x"] != nil
    let y1 = p1["y"] != nil
    let y2 = p2["y"] != nil
    if (x1 && x2 && y1 && y2) {
        return [
            "x": p1["x"]! - p2["x"]!,
            "y": p1["y"]! - p2["y"]!
        ]
    } else {
        return [
            "x": -100000,
            "y": -100000
        ]
    }
    

}


var p11 = [
    "x": 4,
    "y": 10
]
var p22 = [
    "x": 4,
    "y": 10
]

print(addPointsD(p11, p22))
print(subtractPointsD(p11, p22))



func addPointsD(_ p1: Dictionary<String, Double>, _ p2: Dictionary<String, Double>) -> Dictionary<String, Double> {
    let x1 = p1["x"] != nil
    let x2 = p2["x"] != nil
    let y1 = p1["y"] != nil
    let y2 = p2["y"] != nil
    if (x1 && x2 && y1 && y2) {
        return [
            "x": p1["x"]! + p2["x"]!,
            "y": p1["y"]! + p2["y"]!
        ]
    } else {
        return [
            "x": -100000.0,
            "y": -100000.0
        ]
    }
}

func subtractPointsD(_ p1: Dictionary<String, Double>, _ p2: Dictionary<String, Double>) -> Dictionary<String, Double> {
    let x1 = p1["x"] != nil
    let x2 = p2["x"] != nil
    let y1 = p1["y"] != nil
    let y2 = p2["y"] != nil
    if (x1 && x2 && y1 && y2) {
        return [
            "x": p1["x"]! - p2["x"]!,
            "y": p1["y"]! - p2["y"]!
        ]
    } else {
        return [
            "x": -100000.0,
            "y": -100000.0
        ]
    }
}

var a1 = ["x": 44.44, "y": 44.44]
var a2 = ["x": 44.44, "y": 44.22]

print(subtractPointsD(a1, a2))
