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
            
            BabyAlienSitting()
                .tag(1)
            
            OnboardingTabView()
                .tag(2)
        }
        )
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        
        
        
    }
}

#Preview {
    OnboardingTabView()
}
