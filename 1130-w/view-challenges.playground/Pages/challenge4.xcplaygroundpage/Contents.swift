import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 300)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

let colors: [UIColor] = [.green, .gray, .purple, .yellow, .red, .orange, .lightGray, .white, .blue]

/*:
 **Task**: Create an even grid on the `canvas`, made out of squares that each are one third as wide and one third as high as the `canvas`.Use the same colors as in the picture (they are already defined for you above in the `colors` array):
 
 ![Challenge 4](./challenge4.png "Challenge 4")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
func canvasGenerator(color: [UIColor]) -> [UIView]{
    var canvasArray: [UIView] = []
    let width = 100
    let height = 100
    var countColor = 0
    for countX in 0...2{
        for countY in 0...2{
            let canvasElement = UIView(frame: CGRect(x: width * countY, y: height * countX, width: 100, height: 100))
            canvasElement.backgroundColor = color[countColor]
            canvasArray.append(canvasElement)
            canvas.addSubview(canvasElement)
            countColor += 1
        }
    }
    return canvasArray
}
canvasGenerator(color: colors)














