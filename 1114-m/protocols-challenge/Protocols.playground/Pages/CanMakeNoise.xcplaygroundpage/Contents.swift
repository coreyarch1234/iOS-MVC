//: Playground - noun: a place where people can play

import UIKit

protocol CanMakeNoise {
  func makeNoise()
}

<<<<<<< HEAD
class Human: CanMakeNoise {
    func makeNoise(){
        print("BACONN!!!!!!!")
    }
}

class Pig: CanMakeNoise {
    func makeNoise(){
        print("meoowwww")
    }
}

class Cow: CanMakeNoise {
    func makeNoise(){
        print("bark bark")
    }
=======
class Human {
  
}

class Pig {
  
}

class Cow {
>>>>>>> e958d106e8d3bcc377659c1f1296967c80023277
  
}

let human = Human()
let pig = Pig()
let cow = Cow()

<<<<<<< HEAD
let arrayOfNoiseMaker: [CanMakeNoise] = [human, pig, cow]

func printNoise(){
    for animal in arrayOfNoiseMaker{
        animal.makeNoise()
    }
}

printNoise()
=======
// let arrayOfNoiseMaker: [CanMakeNoise] = [human, pig, cow]
>>>>>>> e958d106e8d3bcc377659c1f1296967c80023277

/*:
 **Tasks**:
 1. Uncomment above line and make the code compile. This can be achieved by implementing the `CanMakeNoise` protocol in all the classes. Think about a noise each class could make and print it to the console using `print`.
 2. Iterate over `arrayOfNoiseMaker` and let each object make their noise
 */

