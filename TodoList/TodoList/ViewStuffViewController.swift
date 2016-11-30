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
    var stuffDeadLine: String?
    var stuffItem: Stuff! 
    @IBOutlet weak var titleOfStuff: UILabel!
    @IBOutlet weak var deadLineOfStuff: UILabel!
    @IBAction func doneButton(_ sender: UIButton) {
        delegate.updateStuffDone(stuff: stuffItem, status: true)
        deadLineOfStuff.text = "You are done here!"
    }

    @IBAction func unDoneButton(_ sender: UIButton) {
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
}
