//
//  ViewController.swift
//  UserNotification
//
//  Created by Giresh Dora on 21/01/19.
//  Copyright © 2019 Giresh Dora. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    //MARK: Action methods

    @IBAction func onClickSetNotification(_ sender: Any) {
        //Local Notification Setup
        let content = UNMutableNotificationContent()
        content.title = "Title"
        content.body = "Hello"
        content.sound = UNNotificationSound.default
        let triger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "Test", content: content, trigger: triger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}

