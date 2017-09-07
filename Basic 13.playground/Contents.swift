//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//
//
//func printIntSum(){
//    var sum = 0
//    for i in 1...255{
//        sum += i
//        print(sum)
//    }
//}
//
//printIntSum()


func printArrVal(arr: [Any]) -> [Any] {
    for i in 0..<arr.count {
        print (arr[i])
    }
    return arr
}

printArrVal(arr: [1,2,3,4,5,6,7, "hi"])

//
//func printMaxArray(arr: [Int]) -> Int {
//    var max = arr[0]
//    for i in arr {
//        if i > max {
//            max = i
//        }
//    }
//    print (max)
//    return max
//}
//
//printMaxArray(arr: [3,6,7,2,6,1,10])
//
//var arr1 = [-4,6,-1]
//
//func zeroOut(arr1: inout [Int]) {
//    for i in 0..<arr1.count {
//        if arr1[i] < 0 {
//            arr1[i] = 0
//        }
//    }
//}
//
//zeroOut(arr1: &arr1)
//
//
//var arr: [Any] = [-4,6,-1]
//
//
//func dojoinOut(arr: inout [Any]){
//    for i in 0..<arr.count {
//        if let num = arr[i] as? Int{
//            if num < 0 {
//                arr[i] = "Dojo"
//            }
//        }
//    }
//}
//
//
//dojoinOut(arr: &arr)

var arr = [1,2,3,4]
func squareArr(arr: inout [Int]){
    for i in 0..<arr.count{
        arr[i] *= arr[i]
    }
}

squareArr(arr: &arr)





