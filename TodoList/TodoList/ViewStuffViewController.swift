//
//  ViewStuffViewController.swift
//  TodoList
//
//  Created by Corey Harrilal on 11/25/16.
//  Copyright © 2016 coreyarchharrilal. All rights reserved.
//

import UIKit
protocol viewStuffViewControllerDelegate{
    func deleteStuff(stuff: Stuff)
    func updateStuffDone(stuff: Stuff, status: Bool)
}
//protocol UpdateStuffViewControllerDelegate{
//    func updateStuff(stuff: Stuff)
//}
class ViewStuffViewController: UIViewController{
    var delegate: viewStuffViewControllerDelegate!
//    var delegateUpdate: UpdateStuffViewControllerDelegate!
    var stuffTitle: String?
    var stuffItem: Stuff! 
    @IBOutlet weak var titleOfStuff: UILabel!
    @IBOutlet weak var deadLineOfStuff: UILabel!
    var stuffDeadLine: String?
    @IBAction func doneButton(_ sender: UIButton) {
//        stuffItem.deadline = "You are done here!"
        delegate.updateStuffDone(stuff: stuffItem, status: true)
        deadLineOfStuff.text = "You are done here!"
//        stuffDeadLine = "You are done here!"
    }

    @IBAction func unDoneButton(_ sender: UIButton) {
//        stuffItem.deadline = stuffDeadLine!
        delegate.updateStuffDone(stuff: stuffItem, status: false)
        deadLineOfStuff.text = stuffDeadLine
    }
    @IBAction func deleteStuff(_ sender: UIButton) {
        delegate.deleteStuff(stuff: stuffItem)
    }
    override func viewDidLoad() {
        titleOfStuff.text = stuffTitle
        deadLineOfStuff.text = stuffDeadLine
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if stuffItem.buttonStatus == .Done{
            deadLineOfStuff.text = "You are done here!"
        }
        else{
            deadLineOfStuff.text = stuffDeadLine
        }
        super.viewWillAppear(animated)
        
    }
}
