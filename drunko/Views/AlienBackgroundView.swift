//
//  AlienBackgroundView.swift
//  drunko
//
//  Created by Salvo on 27/10/23.
//

import SwiftUI

struct AlienBackgroundView: View {
    var body: some View {
        RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6030268073, green: 0.6080136299, blue: 0.8535711169, alpha: 1)), Color(#colorLiteral(red: 0.2372646034, green: 0.173969686, blue: 0.3189501762, alpha: 1))]), center: .center, startRadius: /*@START_MENU_TOKEN@*/57/*@END_MENU_TOKEN@*/, endRadius: /*@START_MENU_TOKEN@*/400/*@END_MENU_TOKEN@*/)
            .ignoresSafeArea()
        
        Image("starsbackground")
            .offset(y: -120)
        
        Image("hearthexport")
            .resizable()
            .offset(y: 40)
            .scaledToFit()
            .padding(.bottom)
            .offset(y: 350)
            .frame(width: 850)
        
        Image("babyalienmain")
            .resizable()
            .scaledToFit()
            .padding(.bottom)
            .frame(width: 200)
            .offset(y: 100)
    }
}

#Preview {
    AlienBackgroundView()
}
