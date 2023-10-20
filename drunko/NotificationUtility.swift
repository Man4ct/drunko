//
//  NotificationUtility.swift
//  drunko
//
//  Created by Fahmi Fahreza on 20/10/23.
//

import Foundation
import UserNotifications

func scheduleNotification() {
    // Content of the notification
    let content = UNMutableNotificationContent()
    content.title = "Drunko"
    content.subtitle = "I'm Thirsty 🥺"
    content.sound = UNNotificationSound.default

    // Define the time for the notification trigger (7 PM)
    var dateComponents = DateComponents()
    dateComponents.hour = 19 // 7 PM
    dateComponents.minute = 0 // 0 minutes
    dateComponents.second = 5 // 0 seconds

    // Create a daily trigger at 7 PM
    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
    
    // Remove all pending notifications
     UNUserNotificationCenter.current().removeAllPendingNotificationRequests()

     // Remove all delivered notifications
     UNUserNotificationCenter.current().removeAllDeliveredNotifications()
    
    // Make a request for the notification
    let identifier = UUID().uuidString
    let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)

    // Add it to the notification center
    UNUserNotificationCenter.current().add(request)
    
}
