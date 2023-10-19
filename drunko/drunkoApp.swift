//
//  drunkoApp.swift
//  drunko
//
//  Created by Fahmi Fahreza on 17/10/23.
//

import SwiftUI

@main
struct drunkoApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                AlienView()
                    .tabItem {
                        Label("Drinks", systemImage: "cup.and.saucer.fill")
                    }
                EmptyView()
                    .tabItem {
                        Label("Achievement", systemImage: "trophy.circle")
                    }
                
            }

        }
    }
}
