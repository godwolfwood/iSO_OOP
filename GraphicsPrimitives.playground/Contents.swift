//: Playground - noun: a place where people can play

import UIKit

//Create a Point struct that has two properties called "X" & "Y" both of which are Doubles

struct Point {
    var x: Double
    var y: Double
}

let points = Point(x:2.5, y:3.2)

print (points)

//Create a Line struct that has a "Start" and "End" property both of type Point
//In the Line struct add a function to return the Length of the created line as a Double.

struct Line {
    var Start: Point
    var End: Point
    func Length() -> Double{
        let a = (Start.x - End.x)
        let b = (Start.y - End.y)
        let c = sqrt(pow(a, 2) + pow(b, 2))
        return c
    }
}
let point1 = Point(x: 5, y: 7)
let point2 = Point(x: 1, y: 3)
let line = Line (Start: point1, End: point2)
line.Length()



//Create a Triangle Struct that contains a property called "Points" which is an array of type Point
struct Triangle {
    var Points: [Point]
}





//(Optional) Notice this optional can be quite hard! Add a function to the Triangle to get the area of the triangle built with three provided points and return the value as a Double.