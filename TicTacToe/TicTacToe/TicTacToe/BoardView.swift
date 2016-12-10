//
//  BoardView.swift
//  TicTacToe
//
//  Created by Corey Harrilal on 12/7/16.
//  Copyright © 2016 coreyarchharrilal. All rights reserved.
//

import UIKit 
protocol BoardViewDelegate{
    func sendInLocation(x: CGFloat, y: CGFloat)
}
class BoardView: UIView{
    var delegate: BoardViewDelegate!
    var canvasArray: [UILabel] = []{
        didSet{
            
        }
    }
    var tapArray: [UITapGestureRecognizer] = []
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
    
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap(sender:)))
        self.addGestureRecognizer(tap)
        self.isUserInteractionEnabled = true
    }
    func handleTap(sender: UITapGestureRecognizer){
        if sender.state == .ended{
            var locationTapped = sender.location(in: self)
            delegate.sendInLocation(x: locationTapped.x, y: locationTapped.y)
        }
    }
    // Mark: Create actual game view (square tiles) (tic tac toe, connect 4, etc...)
    func canvasGenerator(tileSize: Int, numberOfTilesInRow: Int, tileColor: UIColor) -> CGRect{
        // Mark: Create overall frame (white)
        let canvasFrame = CGRect(x: Int(self.center.x), y: Int(self.center.y), width: 2 * (numberOfTilesInRow * tileSize), height: 2 * (numberOfTilesInRow * tileSize))
        
        // Mark: Actual game view
        var count = 0
        self.backgroundColor = .black        
        for countX in 0...(numberOfTilesInRow - 1){
            for countY in 0...(numberOfTilesInRow - 1){
                let label = UILabel(frame: CGRect(x: (tileSize * countY), y: (tileSize * countX), width: tileSize, height: tileSize))
                label.text = ""
                label.backgroundColor = tileColor
                label.layer.borderWidth = 6
                label.layer.borderColor = UIColor.blue.cgColor
                canvasArray.append(label)
                self.addSubview(label)
            }
        }
        return canvasFrame
    }
}


