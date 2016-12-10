//
//  Square.swift
//  TicTacToe
//
//  Created by Corey Harrilal on 12/9/16.
//  Copyright © 2016 coreyarchharrilal. All rights reserved.
//

import UIKit

class Square: UILabel {
    var squareSize: Int
    var squareColor: UIColor
    var label: UILabel = UILabel()
    init(frame: CGRect, squareSize: Int, squareColor: UIColor) {
        self.squareSize = squareSize
        self.squareColor = squareColor
        super.init(frame: frame)
        label.frame = frame
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap(sender:)))
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func handleTap(sender: UITapGestureRecognizer){
        if sender.state == .ended{
            var locationTapped = sender.location(in: self)
        }
    }

}
