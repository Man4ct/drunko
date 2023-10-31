//
//  ShapeShipView.swift
//  drunko
//
//  Created by Veronica Natale on 26/10/23.
//

import SwiftUI
import UIKit

struct ShapeShipView: View {
//    @State private var isAnimating: Bool = true
//        @State private var spaceshipPosition = 100
    @State private var scale = 1.0

    

    var body: some View {
        VStack{
            ZStack{
                RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6030268073, green: 0.6080136299, blue: 0.8535711169, alpha: 1)), Color(#colorLiteral(red: 0.2372646034, green: 0.173969686, blue: 0.3189501762, alpha: 1))]), center: .center, startRadius: /*@START_MENU_TOKEN@*/57/*@END_MENU_TOKEN@*/, endRadius: /*@START_MENU_TOKEN@*/400/*@END_MENU_TOKEN@*/)
                    .ignoresSafeArea()
               
                Image("spaceshipdef")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .offset(x: 84, y: -250)
                    .rotationEffect(.degrees(8))
                   // .scaleEffect(isAnimating ? 1 : 0.9)
//                    .onAppear() {
//                        animateSpaceship()
//                                     }
                
               Image("dialogouno")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                
                
                
                Image("moon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .offset(x: -130, y: -390)
                
                Image("starsbackground")
                    .offset(y: -120)

                   
                
                Image("heartimagedef")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom)
                    .offset(y: 480)
                    .frame(width: 850)
                   
            }
        }
    }
}

//func animateSpaceship() {
//       withAnimation(Animation.linear(duration: 2).repeatForever()) {
//          var spaceshipPosition = -100
//       }
//   }


#Preview {
    ShapeShipView()
}
