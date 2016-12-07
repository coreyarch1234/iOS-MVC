//: BoardView Class

import UIKit
import PlaygroundSupport

//let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 300)
//let canvas = UIView(frame: canvasFrame)
//canvas.backgroundColor = .white
//PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

class BoardView: UIView{
    var tileSize: Int
    var numberOfTiles: Int
    var tileColor: UIColor
    // Mark: Initialization
    required init?(coder aDecoder: NSCoder) {
        self.tileSize = 0
        self.numberOfTiles = 0
        self.tileColor = .black
        super.init(coder: aDecoder)
    }
    init(tileSize: Int, numberOfTiles: Int, tileColor: UIColor){
        self.tileSize = tileSize
        self.numberOfTiles = numberOfTiles
        self.tileColor = tileColor
        super.init(frame: CGRect.zero)
        frame = canvasGenerator(tileSize: tileSize, numberOfTiles: numberOfTiles, tileColor: tileColor)
    }
    // Mark: Create actual game view (square tiles) (tic tac toe, connect 4, etc...)
    func canvasGenerator(tileSize: Int, numberOfTiles: Int, tileColor: UIColor) -> CGRect{
        // Mark: Create overall frame (white)
        let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 300)
        //        let canvas = UIView(frame: canvasFrame)
        //        canvas.backgroundColor = .white
        // Mark: Actual game view
        self.backgroundColor = .white
        var canvasArray: [UILabel] = []
        for countX in 0...(numberOfTiles - 1){
            for countY in 0...(numberOfTiles - 1){
                let canvasElement = UILabel(frame: CGRect(x: tileSize * countY, y: tileSize * countX, width: tileSize, height: tileSize))
                //            canvasElement.backgroundColor = color[countColor]
                canvasElement.backgroundColor = tileColor
                canvasArray.append(canvasElement)
                self.addSubview(canvasElement)
            }
        }
        return canvasFrame
    }

}

let boardView = BoardView(tileSize: 100, numberOfTiles: 3, tileColor: .black)
PlaygroundPage.current.liveView = boardView
