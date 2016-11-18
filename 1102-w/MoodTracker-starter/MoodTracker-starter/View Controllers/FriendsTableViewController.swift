//
//  FriendsTableViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {

    
    var friendArray: [Friend] = [Friend(name: "Sammy", mood: Mood.happy), Friend(name: "Betsy", mood: Mood.medium), Friend(name: "Oliver", mood: Mood.angry)]{
        didSet{
            
        }
    }
    
    
    
    func updateMood(friend: Friend, index: Int){
        friendArray[index].mood = friend.mood

        
        
        print(friendArray[index].mood)
        
    }
    
    static let happyMood = "Let's go on some roller coasters"
    static let mediumMood = "Sigh...I guess..."
    static let angryMood = "Leave me alone!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell") as! FriendTableViewCell
       
        let friend = friendArray[indexPath.row]
        cell.nameLabel.text = friend.name
        cell.index = indexPath.row
        cell.myFriend = friendArray[indexPath.row]
        
        cell.friendPerson = self

        switch friend.mood{
        case .happy:
            cell.moodDescriptionLabel.text = FriendsTableViewController.happyMood
            
            
        case .medium:
            cell.moodDescriptionLabel.text = FriendsTableViewController.mediumMood
            
        case .angry:
            cell.moodDescriptionLabel.text = FriendsTableViewController.angryMood
            
            
        }
        
        cell.buttonSwitch.setTitle(friend.mood.rawValue, for: UIControlState.normal)
        
        return cell
    }
    
    
}
