//
//  BoardView.swift
//  TicTacToe
//
//  Created by Corey Harrilal on 12/7/16.
//  Copyright © 2016 coreyarchharrilal. All rights reserved.
//

import UIKit

class BoardView: UIView {
    var tileSize: Int
    var numberOfTilesInRow: Int
    var tileColor: UIColor
    // Mark: Initialization
    required init?(coder aDecoder: NSCoder) {
        self.tileSize = 0
        self.numberOfTilesInRow = 0
        self.tileColor = .white
        super.init(coder: aDecoder)
    }
    init(tileSize: Int, numberOfTilesInRow: Int, tileColor: UIColor){
        self.tileSize = tileSize
        self.numberOfTilesInRow = numberOfTilesInRow
        self.tileColor = tileColor
        super.init(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        self.frame = canvasGenerator(tileSize: tileSize, numberOfTilesInRow: numberOfTilesInRow, tileColor: tileColor)
    }
    // Mark: Create actual game view (square tiles) (tic tac toe, connect 4, etc...)
    func canvasGenerator(tileSize: Int, numberOfTilesInRow: Int, tileColor: UIColor) -> CGRect{
        // Mark: Create overall frame (white)
        let canvasFrame = CGRect(x: Int(self.center.x), y: Int(self.center.y), width: 2 * (numberOfTilesInRow * tileSize), height: 2 * (numberOfTilesInRow * tileSize))
        
        // Mark: Actual game view
        self.backgroundColor = .black
        var canvasArray: [UILabel] = []
        for countX in 0...(numberOfTilesInRow - 1){
            for countY in 0...(numberOfTilesInRow - 1){
                let canvasElement = UILabel(frame: CGRect(x: (tileSize * countY), y: (tileSize * countX) + (tileSize), width: tileSize, height: tileSize))
                canvasElement.backgroundColor = tileColor
                canvasElement.layer.borderWidth = 6
                canvasElement.layer.borderColor = UIColor.blue.cgColor
                canvasArray.append(canvasElement)
                self.addSubview(canvasElement)
            }
        }
        return canvasFrame
    }
}


