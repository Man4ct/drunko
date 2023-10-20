//
//  ContentView.swift
//  drunko
//
//  Created by Fahmi Fahreza on 17/10/23.
//
import SwiftUI

struct AlienView: View {
    @State private var isShowingCupSheet = false
    @State private var isShowingTrophySheet = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.backgroundClor)
                    .ignoresSafeArea(edges: [.top])
                
                VStack {
                    Spacer()
                    Image(systemName: "star.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundStyle(.yellow)
                        .opacity(0.5)
                    //                        .rotationEffect(.degrees(30.0))
                }
                
                Image("alien1")
                    .shadow(radius: 5, y: 10)
                
            }
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    SheetButton(systemName: "cup.and.saucer.fill", content: {
                        DrinkSheetView() .presentationDetents([.medium])
                    }, isShowingSheet: isShowingCupSheet)
                    Spacer()
                    SheetButton(systemName: "trophy.circle", content: {
                        Text("This is half modal sheet for trophy") .presentationDetents([.medium])
                    }, isShowingSheet: isShowingTrophySheet)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AlienView()
    }
}

