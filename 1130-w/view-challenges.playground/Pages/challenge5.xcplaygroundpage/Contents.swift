import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 400, height: 200)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor


/*:
 **Task**: Add two `UIView`s to the `canvas`. The positioning and size of the two views have the following requirements:
 
 - the **blue** view should have a _margin_ of 20 points each to the _top_ and to the _bottom_ edge; it has no margin on the _leading_ (left) edge; its `width` should further be one fourth of the `width` of the `canvas`
 - the **green** view has no _margin_ to the _trailing_ (right) edge; its `width` should further be half the `width` of the `canvas` and its `height` should be half the `height` of the **blue** view (not the `canvas`); on the y-axis it should have the same _center_ as **blue**
 
 ![Challenge 5](./challenge5.png "Challenge 5")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */

<<<<<<< HEAD
let blueFrame = CGRect(x: 0, y :20, width: 100, height: 160)
let canvasBlue = UIView(frame: blueFrame)
canvasBlue.bounds = canvasBlue.frame.insetBy(dx: 0, dy: 0)
canvasBlue.backgroundColor = .blue
canvas.addSubview(canvasBlue)


let redFrame = CGRect(x: 0, y :0, width: 100, height: 200)
let canvasRed = UIView(frame: redFrame)
canvasRed.bounds = canvasRed.frame.insetBy(dx: 0, dy: 20)
canvasRed.backgroundColor = .red
canvas.addSubview(canvasRed)

//let blueFrame = CGRect(x: 0, y :20, width: 100, height: 160)
//let canvasBlue = UIView(frame: blueFrame)
//canvasBlue.bounds = canvasBlue.frame.insetBy(dx: 0, dy: 0)
//canvasBlue.backgroundColor = .blue
//canvas.addSubview(canvasBlue)




let greenFrame = CGRect(x: 200, y :50, width: 200, height: 100)
let canvasGreen = UIView(frame: greenFrame)
canvasGreen.bounds = canvasGreen.frame.insetBy(dx: 0, dy: 0)
canvasGreen.backgroundColor = .green
canvas.addSubview(canvasGreen)

=======
>>>>>>> 1804d074b370b0206976797c4e65f29f0a68c32e
