//
//  AchievementProgressView.swift
//  drunko
//
//  Created by Fahmi Fahreza on 27/10/23.
//

import SwiftUI

struct AchievementProgressView: View {
    let achievement: Achievement
    @AppStorage("counterFirstDrink") var counterFirstDrink = DefaultCounters.counterFirstDrink
    @AppStorage("counterFirstTutorial") var counterFirstTutorial = DefaultCounters.counterFirstTutorial
    @AppStorage("counterFiveDrink") var counterFiveDrink = DefaultCounters.counterFiveDrink
    @AppStorage("counterCoffee") var counterCoffee = DefaultCounters.counterCoffee
    
    var body: some View {
        if (achievement.type == .TUTORIAL) {
            ProgressView( value: counterFirstTutorial, total: 1)
                .tint(.purple)
                .padding()
        } else if ( achievement.type == .ONEDRINK) {
            ProgressView( value: counterFirstDrink, total: 1)
                .tint(.purple)
                .padding()
        } else if (achievement.type == .FIVEDRINK) {
            ProgressView( value: counterFiveDrink, total: 5)
                .tint(.purple)
                .padding()
        } else {
            ProgressView( value: counterCoffee, total: 1)
                .tint(.purple)
                .padding()
        }
            }
}

#Preview {
    AchievementProgressView(achievement: Achievements().achievementList[0])
}
