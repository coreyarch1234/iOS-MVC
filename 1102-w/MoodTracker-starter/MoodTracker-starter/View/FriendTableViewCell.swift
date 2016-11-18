//
//  FriendTableViewCell.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

var ultimateStatusButton: String = ""{
didSet{
    
    
}
}


class FriendTableViewCell: UITableViewCell {
    
    var index: Int?
    var friendPerson = FriendsTableViewController()
    var myFriend: Friend?
    
    let happyMood = "Let's go on some roller coasters"
    let mediumMood = "Sigh...I guess..."
    let angryMood = "Leave me alone!"

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var moodDescriptionLabel: UILabel!
    
    @IBAction func moodButton(_ sender: UIButton) {
        friendPerson.updateMood(friend: myFriend!, index: index!)

//        switch sender.currentTitle!{
//        case Mood.happy.rawValue:
////            buttonSwitch.setTitle(Mood.medium.rawValue, for: UIControlState.normal)
//            //ultimateStatusButton = "Happy"
////            self.moodDescriptionLabel.text = mediumMood
////            myFriend?.mood = Mood.medium
//            friendPerson.updateMood(friend: myFriend!, index: index!)
//            
//        case Mood.medium.rawValue:
////            buttonSwitch.setTitle(Mood.angry.rawValue, for: UIControlState.normal)
//            //ultimateStatusButton = "Medium"
////            self.moodDescriptionLabel.text = angryMood
////            myFriend?.mood = Mood.angry
//            friendPerson.updateMood(friend: myFriend!, index: index!)
//            
//        case Mood.angry.rawValue:
////            buttonSwitch.setTitle(Mood.happy.rawValue, for: UIControlState.normal)
//            //ultimateStatusButton = "Angry"
////            self.moodDescriptionLabel.text = happyMood
////            myFriend?.mood = Mood.happy
//            friendPerson.updateMood(friend: myFriend!, index: index!)
//            
//        default: break
//            
//        }
//        
    }
    
    @IBOutlet weak var buttonSwitch: UIButton!
}
