//: Playground - noun: a place where people can play

import UIKit




var dictionary = [
    "Kobe": 8,
    "Lebron": 23,
    "Rondo": 9
]
print(dictionary)
dictionary["Fisher"] = 2
print(dictionary)
dictionary["Kobe"] = 24
print(dictionary)


for (key, value) in dictionary {
    print("The key is \(key) and the value is \(value)")
}


for x in dictionary {
    print(x)
}