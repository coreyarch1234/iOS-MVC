//
//  Stuff.swift
//  TodoList
//
//  Created by Corey Harrilal on 11/21/16.
//  Copyright © 2016 coreyarchharrilal. All rights reserved.
//

import Foundation
import UIKit

enum Done{
    case Done, NotDone
}
class Stuff{
    var title: String = ""
    var deadline: String = ""
    var buttonStatus: Done = .NotDone{
        didSet{
            if buttonStatus == .Done{
//                deadline = "You are done here!"
            }
            else {
            }
        }
    }
    
    init(title: String, deadline: String, buttonStatus: Done){
        self.title = title
        self.deadline = deadline
        self.buttonStatus = buttonStatus
    }
}
