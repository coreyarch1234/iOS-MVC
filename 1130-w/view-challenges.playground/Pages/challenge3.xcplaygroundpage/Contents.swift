import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 100)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

let colors: [UIColor] = [.green, .blue, .red]

/*:
 **Task**: Add three `UIView`s to the `canvas`. Each of these views should be square and have the canvas's full `height` as well as a third of its `width`. Use the same colors as in the picture (they are already defined for you above in the `colors` array):

 ![Challenge 3](./challenge3.png "Challenge 3")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
<<<<<<< HEAD
let greenFrame = CGRect(x: 0, y :0, width: 100, height: 100)
let canvasGreen = UIView(frame: greenFrame)
canvasGreen.backgroundColor = colors[0]
canvas.addSubview(canvasGreen)

let blueFrame = CGRect(x: 100, y :0, width: 100, height: 100)
let canvasBlue = UIView(frame: blueFrame)
canvasBlue.backgroundColor = colors[1]
canvas.addSubview(canvasBlue)

let redFrame = CGRect(x: 200, y :0, width: 100, height: 100)
let canvasRed = UIView(frame: redFrame)
canvas.backgroundColor = colors[2]
canvas.addSubview(canvasRed)
=======

>>>>>>> 1804d074b370b0206976797c4e65f29f0a68c32e
