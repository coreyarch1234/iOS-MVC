//
//  ListTableViewController.swift
//  TodoList
//
//  Created by Corey Harrilal on 11/21/16.
//  Copyright © 2016 coreyarchharrilal. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController, AddStuffViewControllerDelegate, viewStuffViewControllerDelegate{
    var stuffArray: [Stuff] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stuffArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell") as! ListTableViewCell
        let stuff = stuffArray[indexPath.row]
        cell.stuff = stuff
        if stuff.buttonStatus == .NotDone{
            cell.checkStatusButton.setImage(UIImage(named: "uncheckbox"), for: UIControlState.normal)
        }
        else if stuff.buttonStatus == .Done{
            cell.checkStatusButton.setImage(UIImage(named: "checkbox"), for: UIControlState.normal)
            cell.deadLineLabel.text = "You are done here!"
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let done = UITableViewRowAction(style: .default, title: "Done", handler: { (action, indexPath) -> Void in
          // find stuff from index path
            //
            let stuffItem = self.stuffArray[indexPath.row]
            self.updateStuffDone(stuff: stuffItem, status: true)
            print("Done")
        })
        
        let undone = UITableViewRowAction(style: .default, title: "Un-Done", handler: {(action, indexPath) -> Void in
            //
            let stuffItem = self.stuffArray[indexPath.row]
            self.updateStuffDone(stuff: stuffItem, status: true)
            print("un-done")
        })
        
        return [done, undone]
    }
    //Conforms to the delegate protocol in AddStuffViewController
    func addStuff(stuff: Stuff){
        stuffArray.append(stuff)//Updates the model
        tableView.reloadData() //Updates the view
    }
    //Conforms to the delegate protocol in ViewStuffViewController
    func deleteStuff(stuff: Stuff){
        for (n , c) in stuffArray.enumerated(){
            if c === stuff{
                stuffArray.remove(at: n)
            }
        }
        tableView.reloadData()
    }
    //Conforms to the delegate protocol in ViewStuffViewController
    func updateStuffDone(stuff: Stuff, status: Bool){
        for (n , c) in stuffArray.enumerated(){
            if c === stuff{
                if status == true{
                    stuffArray[n].buttonStatus = .Done
                }
                else if status == false{
                    stuffArray[n].buttonStatus = .NotDone
                }
            }
        }
        tableView.reloadData()
    }
    //Conforms to the delegate protocol in ListViewCell
    func updateTableView() {
        tableView.reloadData()
    }
    //Provides the value of the delegate (self) for the delegator class (AddStuffViewController)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddStuffViewController"{
            let addStuffViewController = segue.destination as! AddStuffViewController
            addStuffViewController.delegate = self
        }
        if segue.identifier == "ViewStuffViewController" {
            if let indexPath = tableView.indexPathForSelectedRow, let stuff = stuffArray[indexPath.row] as? Stuff  {
                let destinationViewController = segue.destination as! ViewStuffViewController
                destinationViewController.delegate = self
                destinationViewController.stuffItem = stuff
                destinationViewController.stuffTitle = stuff.title
                destinationViewController.stuffDeadLine = stuff.deadline
            }
        }

    }
    //MARK:Implement code to tap on a stuff item and view it singularly
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        // Perform Segue
        performSegue(withIdentifier: "ViewStuffViewController", sender: self)
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
}

