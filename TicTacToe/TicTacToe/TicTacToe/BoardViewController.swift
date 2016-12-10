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
    func isEnded(){
        if board.gameState == .Ended{
            ticTacToeView.isUserInteractionEnabled = false
            let alertAction = UIAlertController(title: "Woohoo!!", message: "\(board.player) + has won!", preferredStyle: UIAlertControllerStyle.alert)
            alertAction.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: nil))
            self.present(alertAction, animated: true, completion: nil)
        }
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
            if board.player == .circle{
                ticTacToeView.canvasArray[0].text = board.playerCircleText
            }
            else{
                ticTacToeView.canvasArray[0].text = board.playerCrossText
            }
        }
        else if domainB && rangeB{
            move = Movement.B
            if board.player == .circle{
                ticTacToeView.canvasArray[1].text = board.playerCircleText
            }
            else{
                ticTacToeView.canvasArray[1].text = board.playerCrossText
            }
        }
        else if domainC && rangeC{
            move = Movement.C
            if board.player == .circle{
                ticTacToeView.canvasArray[2].text = board.playerCircleText
            }
            else{
                ticTacToeView.canvasArray[2].text = board.playerCrossText
            }
        }
        else if domainD && rangeD{
            move = Movement.D
            if board.player == .circle{
                ticTacToeView.canvasArray[3].text = board.playerCircleText
            }
            else{
                ticTacToeView.canvasArray[3].text = board.playerCrossText
            }
        }
        else if domainE && rangeE{
            move = Movement.E
            if board.player == .circle{
                ticTacToeView.canvasArray[4].text = board.playerCircleText
            }
            else{
                ticTacToeView.canvasArray[4].text = board.playerCrossText
            }
        }
        else if domainF && rangeF{
            move = Movement.F
            if board.player == .circle{
                ticTacToeView.canvasArray[5].text = board.playerCircleText
            }
            else{
                ticTacToeView.canvasArray[5].text = board.playerCrossText
            }
        }
        else if domainG && rangeG{
            move = Movement.G
            if board.player == .circle{
                ticTacToeView.canvasArray[6].text = board.playerCircleText
            }
            else{
                ticTacToeView.canvasArray[6].text = board.playerCrossText
            }
        }
        else if domainH && rangeH{
            move = Movement.H
            if board.player == .circle{
                ticTacToeView.canvasArray[7].text = board.playerCircleText
            }
            else{
                ticTacToeView.canvasArray[7].text = board.playerCrossText
            }
        }
        else if domainI && rangeI{
            move = Movement.I
            if board.player == .circle{
                ticTacToeView.canvasArray[8].text = board.playerCircleText
            }
            else{
                ticTacToeView.canvasArray[8].text = board.playerCrossText
            }
        }
        //MARK: Game movement
        board.Move(move: move)
        if board.gameState == .Ended{
            ticTacToeView.isUserInteractionEnabled = false
            let alertAction = UIAlertController(title: "Woohoo!!", message: "\(board.player) + has won!", preferredStyle: UIAlertControllerStyle.alert)
            alertAction.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: nil))
            self.present(alertAction, animated: true, completion: nil)
        }
    }
    

}
