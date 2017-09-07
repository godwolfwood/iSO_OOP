//: Playground - noun: a place where people can play

import UIKit

//Animals

//To Do
//First, create a class called Animal
//
//Give Animal a property "name"
//Give Animal a property "health" with a default value of 100
//Give Animal an initialization that takes in a name and sets the name property appropriately
//Give the animal a displayHealth method
//Next, create a subclass of Animal called Cat
//
//Give the Cat a method "growl" that prints to the screen "Rawr!"
//Modify the Cat's health to be 150
//Give the Cat a method "run" that prints to the screen "Running" and deducts 10 health
//Next, create two subclasses of Cat - Cheetah and Lion
//
//Override the growl method of the Lion to make it print "ROAR!!!! I am the King of the Jungle"
//Override Lion's health to be 200
//Override the Cheetah's run method to print "Running Fast" and deduct 50 health
//Add a sleep function to the Cheetah class that adds 50 health (make sure that the Cheetah's health limit remains 200)


class Animal {
    var name: String
    var health: Int = 100
    
    init(name: String) {
        self.name = name
    }
    
    func displayHealth(){
        print (name, "has", health, "health")
    }
}

class Cat: Animal {
    func growl(){
        print (name, "said Rawr!")
    }
    override init(name: String){
        super.init(name: name)
        self.health = 150
    }
    
    func run(){
        print (name, "is Running. Health decrease by 10")
        if self.health > 10{
            self.health -= 10
        }
        else {
            self.health = 1
        }
    }
}

class Cheetah: Cat {
    override func run(){
        print (name, "is Running Fast. Health decrease by 50")
        if self.health > 50{
            self.health -= 50
        }
        else {
            self.health = 1
        }
    }
    
    func sleep() {
        print (name, "is sleeping. Health increase by 50")
        if self.health < 150 {
            self.health += 50
        }
        else {
            self.health = 200
        }
    }
}

class Lion: Cat{
    override func growl() {
        print (name, "said ROAR!!!! I am the King of the Jungle")
    }
    override init(name: String){
        super.init(name: name)
        self.health = 200
    }
}

var muffin = Cat(name: "Muffin")
muffin.displayHealth()
muffin.growl()
muffin.run()
muffin.run()
muffin.run()
muffin.displayHealth()

var marco = Cheetah(name: "Marco")
marco.displayHealth()
marco.growl()
marco.run()
marco.run()
marco.run()
marco.displayHealth()
marco.sleep()
marco.sleep()
marco.sleep()
marco.sleep()
marco.displayHealth()

var simba = Lion(name: "Simba")
simba.displayHealth()
simba.growl()
simba.run()
simba.run()
simba.displayHealth()



