//
//  BoardViewController.swift
//  TicTacToe
//
//  Created by Corey Harrilal on 12/7/16.
//  Copyright © 2016 coreyarchharrilal. All rights reserved.
//

import Foundation
import UIKit

class BoardViewController: UIViewController{
    let ticTacToeView = BoardView(tileSize: 75, numberOfTilesInRow: 3, tileColor: .green)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(ticTacToeView)
    }
}
