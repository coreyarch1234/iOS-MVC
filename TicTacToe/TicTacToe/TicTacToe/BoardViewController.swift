//
//  BoardViewController.swift
//  TicTacToe
//
//  Created by Corey Harrilal on 12/7/16.
//  Copyright © 2016 coreyarchharrilal. All rights reserved.
//

import Foundation
import UIKit

class BoardViewController: UIViewController, BoardViewDelegate{
    let tileSize = CGFloat(75.0)
    let ticTacToeView = BoardView(tileSize: 75, numberOfTilesInRow: 3, tileColor: .green)
    var board = Board()
    var move: Movement!
    override func viewDidLoad() {
        super.viewDidLoad()
        ticTacToeView.delegate = self
        self.view.addSubview(ticTacToeView)
    }
    func sendInLocation(x: CGFloat, y: CGFloat) {
        //MARK: Find the cell location of the tap
        let positionTuple = (x, y)
        
        let domainA: Bool = positionTuple.0 >= 0.0 && positionTuple.0 < tileSize
        let rangeA: Bool = positionTuple.1 >= 0.0 && positionTuple.1 < tileSize
        let domainB: Bool = positionTuple.0 >= tileSize && positionTuple.0 < tileSize * 2
        let rangeB: Bool = positionTuple.1 >= 0.0 && positionTuple.1 < tileSize
        let domainC: Bool = positionTuple.0 >= tileSize * 2 && positionTuple.0 < tileSize * 3
        let rangeC: Bool = positionTuple.1 >= 0.0 && positionTuple.1 < tileSize
        let domainD: Bool = positionTuple.0 >= 0.0 && positionTuple.0 < tileSize
        let rangeD: Bool = positionTuple.1 >= tileSize && positionTuple.1 < tileSize * 2
        let domainE: Bool = positionTuple.0 >= tileSize && positionTuple.0 < tileSize * 2
        let rangeE: Bool = positionTuple.1 >= tileSize && positionTuple.1 < tileSize * 2
        let domainF: Bool = positionTuple.0 >= tileSize * 2 && positionTuple.0 < tileSize * 3
        let rangeF: Bool = positionTuple.1 >= tileSize && positionTuple.1 < tileSize * 2
        let domainG: Bool = positionTuple.0 >= 0.0 && positionTuple.0 < tileSize
        let rangeG: Bool = positionTuple.1 >= tileSize * 2 && positionTuple.1 < tileSize * 3
        let domainH: Bool = positionTuple.0 >= tileSize && positionTuple.0 < tileSize * 2
        let rangeH: Bool = positionTuple.1 >= tileSize * 2 && positionTuple.1 < tileSize * 3
        let domainI: Bool = positionTuple.0 >= tileSize * 2 && positionTuple.0 < tileSize * 3
        let rangeI: Bool = positionTuple.1 >= tileSize * 2 && positionTuple.1 < tileSize * 3
        
        if domainA && rangeA{
            move = Movement.A
            ticTacToeView.canvasArray[0].text = board.player
        }
        else if domainB && rangeB{
            move = Movement.B
        }
        else if domainC && rangeC{
            move = Movement.C
        }
        else if domainD && rangeD{
            move = Movement.D
        }
        else if domainE && rangeE{
            move = Movement.E
        }
        else if domainF && rangeF{
            move = Movement.F
        }
        else if domainG && rangeG{
            move = Movement.G
        }
        else if domainH && rangeH{
            move = Movement.H
        }
        else if domainI && rangeI{
            move = Movement.I
        }
        //MARK: Game movement
        board.Move(move: move)
        if board.gameState == .Ended{
            ticTacToeView.isUserInteractionEnabled = false
            let alertAction = UIAlertController(title: "Woohoo!!", message: "\(board.player) + has won!", preferredStyle: UIAlertControllerStyle.alert)
            alertAction.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: nil))
            self.present(alertAction, animated: true, completion: nil)
        }
//        print(board.gameState)
        
    }
    
}
