//: [Previous](@previous)

import Foundation

protocol Computable {
    func compute() -> Int
}

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
    
}

let sum = Sum()
let product = Product()
let countCharacters = CountCharacters()
let random = Random()

let arrayOfComputables: [Computable] = [sum, product, countCharacters, random]

func printInts(){
    for operation in arrayOfComputables{
        print(String(operation.compute()))
    }
}
printInts()

/*:
 **Tasks**: 
 1. Uncomment above line and make the code compile (by implementing the `Computable` protocol in all the classes)
 2. Iterate over `arrayOfComputables`, _compute_ each result and print it to the console using `print`
 */

