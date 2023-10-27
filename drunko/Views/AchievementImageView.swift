//
//  AchievementImageView.swift
//  drunko
//
//  Created by Fahmi Fahreza on 27/10/23.
//

import SwiftUI

struct AchievementImageView: View {
    let achievement: Achievement
    @AppStorage("counterFirstDrink") var counterFirstDrink = DefaultCounters.counterFirstDrink
    @AppStorage("counterFirstTutorial") var counterFirstTutorial = DefaultCounters.counterFirstTutorial
    @AppStorage("counterFiveDrink") var counterFiveDrink = DefaultCounters.counterFiveDrink
    @AppStorage("counterCoffee") var counterCoffee = DefaultCounters.counterCoffee
    
    var body: some View {
        if (achievement.type == .TUTORIAL && achievement.counterEnd == counterFirstTutorial) {
            Image(achievement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 30)
        } else if ( achievement.type == .ONEDRINK && achievement.counterEnd == counterFirstDrink) {
            Image(achievement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 30)
        } else if (achievement.type == .FIVEDRINK && achievement.counterEnd == counterFiveDrink) {
            Image(achievement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 30)
        } else if (achievement.type == .COFFEE && achievement.counterEnd == counterCoffee) {
            Image(achievement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 30)
        } else {
            Image(systemName: "lock.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(Color(.gray))
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 30)
        }}
}

#Preview {
    AchievementImageView(achievement: Achievements().achievementList[0])
}
