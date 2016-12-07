import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 400, height: 200)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor


/*:
 **Task**: Add two `UIView`s to the `canvas`. The positioning and size of the two views have the following requirements:
 
 - the **blue** view should have a _margin_ of 20 points each to the _top_ and to the _leading_ (left) edge; it should further be square and have half the `height` as the `canvas`
 - the **green** view should have a _margin_ of 20 points each to the _bottom_ and to the _trailing_ (right) edge; it should further be square and have half the `height` as the `canvas`
 
 ![Challenge 6](./challenge6.png "Challenge 6")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
<<<<<<< HEAD
let blueFrame = CGRect(x: 0, y :0, width: 140, height: 140)
let canvasBlue = UIView(frame: blueFrame)
canvasBlue.bounds = canvasBlue.frame.insetBy(dx: 20, dy: 20)
canvasBlue.backgroundColor = .blue
canvas.addSubview(canvasBlue)




let greenFrame = CGRect(x: 280, y :80, width: 100, height: 100)
let canvasGreen = UIView(frame: greenFrame)
//canvasGreen.bounds = canvasGreen.frame.insetBy(dx: 0, dy: 0)
canvasGreen.backgroundColor = .green
canvas.addSubview(canvasGreen)

=======
>>>>>>> 1804d074b370b0206976797c4e65f29f0a68c32e

