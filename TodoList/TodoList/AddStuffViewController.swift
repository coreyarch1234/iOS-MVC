//
//  AddStuffViewController.swift
//  TodoList
//
//  Created by Corey Harrilal on 11/25/16.
//  Copyright © 2016 coreyarchharrilal. All rights reserved.
//

import UIKit

protocol AddStuffViewControllerDelegate{
    func addStuff(stuff: Stuff)
}
class AddStuffViewController: UIViewController{
    var delegate: AddStuffViewControllerDelegate!
    var strDate: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var addStuffText: UITextField!
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        delegate.addStuff(stuff: createNewStuff())
        presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        presentingViewController?.dismiss(animated: true)
    }
    func createNewStuff() -> Stuff{
        let title = addStuffText.text
        if let deadline = strDate{
            return Stuff(title: title!, deadline: deadline, buttonStatus: .NotDone)
        }
        else{
            let deadline = "Now"
            return Stuff(title: title!, deadline: deadline, buttonStatus: .NotDone)
        }
    }
    
    @IBOutlet weak var stuffDatePicker: UIDatePicker!
    @IBAction func stuffChoseDatePicker(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .medium
//        dateFormatter.dateFormat = "MM-dd-yyyy"
        strDate = dateFormatter.string(from: stuffDatePicker.date)
    }
}
