//
//  Board.swift
//  TicTacToe
//
//  Created by Corey Harrilal on 12/7/16.
//  Copyright © 2016 coreyarchharrilal. All rights reserved.
//

import Foundation
import UIKit

enum GameState{
    case Ongoing
    case Ended
}
enum Player: Int{
    case cross = 1
    case circle = 2
}
enum Movement: String{
    case A = "A"
    case B = "B"
    case C = "C"
    case D = "D"
    case E = "E"
    case F = "F"
    case G = "G"
    case H = "H"
    case I = "I"
}

struct Board{
    var gameState: GameState = .Ongoing
    var player: Player = .circle
    var playerCircleText = "O"
    var playerCrossText = "X"
    var winner: Player!
    var move: Movement = .A
    var crossCount: [String]
    var circleCount: [String]
    var crossPosition: (x: Int, y: Int) = (0, 0)
    var circlePosition: (x: Int, y: Int) = (0, 0)
    init(){
        self.crossCount = []
        self.circleCount = []
    }
    mutating func Move(move: Movement){
        if player == .cross{
            switch move{
            case .A:
                checkCountCross(x: 0, 0)
            case .B:
                checkCountCross(x: 1, 0)
            case .C:
                checkCountCross(x: 2, 0)
            case .D:
                checkCountCross(x: 0, 1)
            case .E:
                checkCountCross(x: 1, 1)
            case .F:
                checkCountCross(x: 2, 1)
            case .G:
                checkCountCross(x: 0, 2)
            case .H:
                checkCountCross(x: 1, 2)
            case .I:
                checkCountCross(x: 2, 2)
            }
            didWin(winArray: crossCount)
            player = .circle
        }
        else if player == .circle{
            switch move{
            case .A:
                checkCountCircle(x: 0, 0)
            case .B:
                checkCountCircle(x: 1, 0)
            case .C:
                checkCountCircle(x: 2, 0)
            case .D:
                checkCountCircle(x: 0, 1)
            case .E:
                checkCountCircle(x: 1, 1)
            case .F:
                checkCountCircle(x: 2, 1)
            case .G:
                checkCountCircle(x: 0, 2)
            case .H:
                checkCountCircle(x: 1, 2)
            case .I:
                checkCountCircle(x: 2, 2)
            }
            
            didWin(winArray: circleCount)
            player = .cross
        }
        
    }
    mutating func didWin(winArray: [String]){
        if winArray.elementsEqual(["A", "E", "I"]) || winArray.elementsEqual(["C", "E", "G"]) || winArray.elementsEqual(["A", "B", "C"]) || winArray.elementsEqual(["D", "E", "F"]) || winArray.elementsEqual(["G", "H", "I"]) || winArray.elementsEqual(["A", "D", "G"]) || winArray.elementsEqual(["B", "E", "H"]) || winArray.elementsEqual(["C", "F", "I"]){
            gameState = .Ended
            if winArray == crossCount{
                winner = Player.cross
            }
            else if winArray == circleCount{
                winner = Player.circle
            }
        }
    }
    mutating func checkCountCross(x: Int, _ y: Int){
        switch (x, y){
        case (0,0):
            crossCount.append("A")
        case (1, 0):
            crossCount.append("B")
        case (2, 0):
            crossCount.append("C")
        case (0, 1):
            crossCount.append("D")
        case (1, 1):
            crossCount.append("E")
        case (2, 1):
            crossCount.append("F")
        case (0, 2):
            crossCount.append("G")
        case (1, 2):
            crossCount.append("H")
        case (2, 2):
            crossCount.append("I")
        default: break
        }
    }
    mutating func checkCountCircle(x: Int, _ y: Int){
        switch (x, y){
        case (0,0):
            circleCount.append("A")
        case (1, 0):
            circleCount.append("B")
        case (2, 0):
            circleCount.append("C")
        case (0, 1):
            circleCount.append("D")
        case (1, 1):
            circleCount.append("E")
        case (2, 1):
            circleCount.append("F")
        case (0, 2):
            circleCount.append("G")
        case (1, 2):
            circleCount.append("H")
        case (2, 2):
            circleCount.append("I")
        default: break
        }
    }
}

//var currentPlayer: Player = .circle
//var initialMove: Movement = .Down
//var board = Board()
//board.player
//board.Move(move: .A)
//board.player
//board.Move(move: .D)
//board.player
//board.Move(move: .B)
//board.player
//board.Move(move: .E)
//board.player
//board.Move(move: .C)
//board.gameState
//board.circleCount
//board.winner





















