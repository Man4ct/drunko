//
//  AchievementView.swift
//  drunko
//
//  Created by Fahmi Fahreza on 24/10/23.
//

import SwiftUI

struct AchievementView: View {
    let achievements = Achievements() 
    var body: some View {
        VStack{
            TabView{
                ForEach(achievements.achievementList) { achievement in
                    VStack{
                        
                        Text(achievement.title)
                            .bold()
                            .font(.title)
                            .padding(.bottom, 30)
                        
                        Image(achievement.imageName)
                            .resizable()
                        //                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .aspectRatio(contentMode: .fit)
                            .padding(.bottom, 30)
                        
                        Text(achievement.description)
                            .padding(.bottom, 5)
                            .font(.callout)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
                        
                        AchievementProgressView(achievement: achievement)
                        
                    }
                }
            }
        }
        .tabViewStyle(.page)
        .frame(height: 290)
        
    }
}

#Preview {
    AchievementView()
}
