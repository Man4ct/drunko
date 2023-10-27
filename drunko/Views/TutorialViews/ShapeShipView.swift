//
//  ShapeShipView.swift
//  drunko
//
//  Created by Veronica Natale on 26/10/23.
//

import SwiftUI
import UIKit

struct ShapeShipView: View {
    var body: some View {
        VStack{
            ZStack{
                RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6030268073, green: 0.6080136299, blue: 0.8535711169, alpha: 1)), Color(#colorLiteral(red: 0.2372646034, green: 0.173969686, blue: 0.3189501762, alpha: 1))]), center: .center, startRadius: /*@START_MENU_TOKEN@*/57/*@END_MENU_TOKEN@*/, endRadius: /*@START_MENU_TOKEN@*/400/*@END_MENU_TOKEN@*/)
                    .ignoresSafeArea()
               
                Image("moon")
                    .offset(x: -130, y: -350)
                
                Image("starsbackground")
                    .offset(y: -120)
                
                Image("spacetemporary")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                    .offset(x: 100, y: -300)
                    .rotationEffect(.degrees(8))

                
                Image("hearthexport")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom)
                    .offset(y: 300)
                    .frame(width: 850)
                   
            }
        }
    }
}

#Preview {
    ShapeShipView()
}
