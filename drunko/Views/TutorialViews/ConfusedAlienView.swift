//
//  ConfusedAlienView.swift
//  drunko
//
//  Created by Veronica Natale on 26/10/23.
//
import SwiftUI
import UIKit

struct ConfusedAlienView: View {
    
    
    
    var body: some View {
        VStack{
            ZStack{
                RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6030268073, green: 0.6080136299, blue: 0.8535711169, alpha: 1)), Color(#colorLiteral(red: 0.2372646034, green: 0.173969686, blue: 0.3189501762, alpha: 1))]), center: .center, startRadius: /*@START_MENU_TOKEN@*/57/*@END_MENU_TOKEN@*/, endRadius: /*@START_MENU_TOKEN@*/400/*@END_MENU_TOKEN@*/)
                    .ignoresSafeArea()
               
                Image("moon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .offset(x: -130, y: -390)
                
                Image("starsbackground")
                    .offset(y: -120)
                
                
                Image("dialogotre")
                     .resizable()
                     .scaledToFit()
                     .frame(width: 250)
                     .offset(y: -120)
                  
                
                Image("heartimagedef")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom)
                    .offset(y: 480)
                    .frame(width: 850)
                
                Image("emptyspaceship")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120)
                    .offset(x: -135, y: 130)
                    .rotationEffect(.degrees(-3))
                
                Image("babyalienrunning")
                    .offset(y: 110)
                
                
                   
            }
        }
    }
}

#Preview {
    ConfusedAlienView()
}
