//
//  main.swift
//  CalcArrayPoints
//
//  Created by Austin Brovick  on 10/11/17.
//  Copyright © 2017 Austin Brovick . All rights reserved.
//

import Foundation



func add (_ a: Int, _ b: Int) -> Int {
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


func add (_ numbers : [Int]) -> Double {
    var sum = 0
    for i in numbers {
        sum+=i
    }
    return Double(sum)
}


func mul (_ numbers: [Int]) -> Double {
    var sum = 1
    for i in numbers {
        sum*=i
    }
    return Double(sum)
}

func count (_ numbers: [Int]) -> Double {
    return Double(numbers.count)
}

func avg (_ numbers: [Int]) -> Double {
    return Double(add(numbers))/Double(count(numbers))
}

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

//let ar : [Int] = [1, 2, 3, 4]
//print(math("multiply", ar))
//print(subtract(10, 4))





// Points
func addPoints(_ p1: (x: Int, y: Int), _ p2: (x: Int, y: Int)) -> (Int, Int) {
    return (p1.x + p2.x, p1.y + p2.y)
}

func subtractPoints(_ p1: (x: Int, y: Int), _ p2: (x: Int, y: Int)) -> (Int, Int) {
    return (p1.x - p2.x, p1.y - p2.y)
}

var p1 = (x: 4, y: 5)
var p2 = (x: 4, y: 5)
print(addPoints(p1, p2))
print(subtractPoints(p1, p2))


