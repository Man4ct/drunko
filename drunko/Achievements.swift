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
        achievementList.append(Achievement(title: "Give First Drink", imageName: "giveDrinkMedal", description: "Give first drink to unlock", counterEnd: 1, type: .ONEDRINK))
        achievementList.append(Achievement(title: "Finish Tutorial", imageName: "tutorialMedal", description: "Finish tutorial to unlock",counterEnd: 1, type: .TUTORIAL))
        achievementList.append(Achievement(title: "Give 5 Drinks", imageName: "giveFiveDrinkMedal", description: "Give 5 drink to unlock",counterEnd: 5,type: .FIVEDRINK))
        achievementList.append(Achievement(title: "Give 1 Coffee", imageName: "giveCoffeeMedal", description: "Give 1 coffee to unlock",counterEnd: 1, type: .COFFEE))
    }
}
