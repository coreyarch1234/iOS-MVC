//
//  ListViewCell.swift
//  TodoList
//
//  Created by Corey Harrilal on 11/21/16.
//  Copyright © 2016 coreyarchharrilal. All rights reserved.
//
import UIKit
class ListTableViewCell: UITableViewCell{
    @IBOutlet weak var itemTitleLabel: UILabel!
    @IBOutlet weak var deadLineLabel: UILabel!
    @IBOutlet weak var checkStatusButton: UIButton!
    @IBAction func checkButtonTapped(_ sender: UIButton) {
        if self.stuff.buttonStatus == .NotDone{
            self.stuff.buttonStatus = .Done
            checkStatusButton.setImage(UIImage(named: "checkbox"), for: UIControlState.normal)
            deadLineLabel.text = "You are done!"
            print(" The name of this task is: " + self.stuff.title + " and it is, " + "\(self.stuff.buttonStatus)")
        }
        else{
            self.stuff.buttonStatus = .NotDone
            checkStatusButton.setImage(UIImage(named: "uncheckbox"), for: UIControlState.normal)
            deadLineLabel.text = self.stuff.deadline
            print(" The name of this task is: " + self.stuff.title + " and it is, " + "\(self.stuff.buttonStatus)")
        }
    }
    var stuff: Stuff!{
        didSet{
            itemTitleLabel.text = stuff.title
            deadLineLabel.text = stuff.deadline
            if stuff.buttonStatus == .Done{
                checkStatusButton.setImage(UIImage(named: "checkbox"), for: UIControlState.normal)
                print("I am done!")
            }
            else if stuff.buttonStatus == .NotDone{
                checkStatusButton.setImage(UIImage(named: "uncheckbox"), for: UIControlState.normal)
            }
        }
    }
}


