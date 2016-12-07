
import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 300)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

/*:
 **Task**: Add three `UIView`s to the `canvas`. Each of these views should be square and have a third of the `canvas`' `width` and `height`. 
 
 
 ![Challenge 2](./challenge2.png "Challenge 2")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
<<<<<<< HEAD
let redFrameOne = CGRect(x: 0, y: 0, width: 100, height: 100)
let redCanvasOne = UIView(frame: redFrameOne)
redCanvasOne.backgroundColor = .red
redCanvasOne.bounds = redCanvasOne.frame.insetBy(dx: 2, dy: 2)
canvas.addSubview(redCanvasOne)

let redFrameTwo = CGRect(x: 100, y: 100, width: 100, height: 100)
let redCanvasTwo = UIView(frame: redFrameTwo)
redCanvasTwo.backgroundColor = .red
redCanvasTwo.bounds = redCanvasTwo.frame.insetBy(dx: -2, dy: -2)
canvas.addSubview(redCanvasTwo)

let redFrameThree = CGRect(x: 200, y: 200, width: 100, height: 100)
let redCanvasThree = UIView(frame: redFrameThree)
redCanvasThree.backgroundColor = .red
redCanvasThree.bounds = redCanvasThree.frame.insetBy(dx: 2, dy: 2)
canvas.addSubview(redCanvasThree)










=======
>>>>>>> 1804d074b370b0206976797c4e65f29f0a68c32e
