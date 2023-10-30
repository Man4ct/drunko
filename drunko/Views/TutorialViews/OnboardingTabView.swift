//
//  OnboardingTabView.swift
//  drunko
//
//  Created by Veronica Natale on 27/10/23.
//

import SwiftUI

struct OnboardingTabView: View {
    
    @State private var currentTab = 0
    
    var body: some View {
        
        
        TabView(selection: $currentTab,
                content:  {
            ShapeShipView()
                .tag(0)
            
            ShipRay()
                .tag(1)
            
            ConfusedAlienView()
                .tag(2)
            
            BabyAlienSitting()
                .tag(3)
        }
        )
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .ignoresSafeArea()
        
        
        
    }
}

#Preview {
    OnboardingTabView()
}
