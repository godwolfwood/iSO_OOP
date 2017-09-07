//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Person {
    var species = "ET"
}
var myPerson: Person = Person()

myPerson.species = "ROBOT"


print("\(myPerson.species)")



class Pet {
    var species = "Cat"
    func speak(){
        print("Hello! I am a \(self.species)")
    }
}

var myPet: Pet = Pet()
myPet.speak()


class User {
    var intelligence = 0
    func studyForTopic(topic: String, hours: Int){
        print("I am studying \(topic) for \(hours) hours")
    }
}

var user = User()
user.studyForTopic(topic: "iOS", hours: 1000)