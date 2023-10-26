//
//  AchievementList.swift
//  drunko
//
//  Created by Fahmi Fahreza on 24/10/23.
//

import Foundation
struct Achievements {
    var achievementList: [Achievement] = []
    init() {
        achievementList.append(Achievement(title: "Give First Drink", imageName: "trophy", description: "Give first drink to unlock", counterEnd: 1))
        achievementList.append(Achievement(title: "Finish Tutorial", imageName: "lock", description: "Finish tutorial to unlock",counterEnd: 1))
        achievementList.append(Achievement(title: "Give 5 Drinks", imageName: "badge", description: "Give 5 drink to unlock",counterEnd: 5))
    }
}
