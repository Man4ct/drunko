//
//  drunkoApp.swift
//  drunko
//
//  Created by Fahmi Fahreza on 17/10/23.
//
import SwiftUI
import UserNotifications

@main
struct drunkoApp: App {
//    Ask Permission to view notif when first open the app
    init() {
        UNUserNotificationCenter.current().requestAuthorization(options:  [.alert, .badge, .sound]) { status, error in
            print(status)
            if let err = error {
                print(err)
            } else {
                scheduleNotification()
            }
        }
        if(!userDefaultKeyExist(key: "health")){
            UserDefaults.standard.setValue(10.0, forKey: "health")
        }
        if(!userDefaultKeyExist(key: "level")){
            UserDefaults.standard.setValue(1, forKey: "level")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            AlienView()
        }
    }
}
