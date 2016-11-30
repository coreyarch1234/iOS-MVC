//: [Previous](@previous)

import Foundation

protocol Computable {
    func compute() -> Int
}

<<<<<<< HEAD
class Sum: Computable {
  var numbers = [1,2,3,4,5,6,7,8,9]
    func compute() -> Int{
        var sum = 0
        for num in numbers{
            sum += num
        }
        return sum
    }
}

class Product: Computable {
  var numbers = [1,2,3,4,5,6,7,8,9]
    func compute() -> Int{
        var product = 0
        for num in numbers{
            product *= num
        }
        return product
    }
}

class CountCharacters: Computable {
    var string: String = "odinfeoivneflndwcnervbunlinwe;dqwmid"
    func compute() -> Int{
        var length = string.characters.count
        return length
    }
}

class Random: Computable {
    let random = arc4random_uniform(UInt32(2))
    func compute() -> Int {
        switch random{
        case 0:
            let sum = Sum()
            return sum.compute()
        case 1:
            let product = Product()
            return product.compute()
        case 2:
            let countCharacter = CountCharacters()
            return countCharacter.compute()
        default:
            return 0
        }
        
    }
    
=======
class Sum {
  var numbers = [1,2,3,4,5,6,7,8,9]
}

class Product {
  var numbers = [1,2,3,4,5,6,7,8,9]
}

class CountCharacters {
  var string: String = "odinfeoivneflndwcnervbunlinwe;dqwmid"
}

class Random {
  
>>>>>>> e958d106e8d3bcc377659c1f1296967c80023277
}

let sum = Sum()
let product = Product()
let countCharacters = CountCharacters()
let random = Random()

<<<<<<< HEAD
let arrayOfComputables: [Computable] = [sum, product, countCharacters, random]

func printInts(){
    for operation in arrayOfComputables{
        print(String(operation.compute()))
    }
}
printInts()
=======
//let arrayOfComputables = [sum, product, countCharacters, random]
>>>>>>> e958d106e8d3bcc377659c1f1296967c80023277

/*:
 **Tasks**: 
 1. Uncomment above line and make the code compile (by implementing the `Computable` protocol in all the classes)
 2. Iterate over `arrayOfComputables`, _compute_ each result and print it to the console using `print`
 */

