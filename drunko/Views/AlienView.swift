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
    @State private var drink: Drink = coffeeDrink
    @AppStorage("counterFirstDrink") var counterFirstDrink = DefaultCounters.counterFirstDrink
    @AppStorage("counterFiveDrink") var counterFiveDrink = DefaultCounters.counterFiveDrink
    
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
                }
                
                Image("alien1")
                    .resizable()
                    .frame(width: 300,height: 350)
                    .shadow(radius: 5, y: 10)
                
            }
            .dropDestination(for: Drink.self){ items,location in
                drink = items.first!
                
                if(counterFirstDrink == 0) {
                    counterFirstDrink = 1
                }
                if(counterFiveDrink < 5) {
                    counterFiveDrink += 1
                }
                isShowingCupSheet = false
                return true
            }
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    SheetButton(systemName: "cup.and.saucer.fill", content: {
                        DrinkSheetView()
                            .presentationDetents([.medium])
                            .presentationBackgroundInteraction(.enabled(upThrough: .medium))
                    }, isShowingSheet: $isShowingCupSheet)
                    Spacer()
                    
                    SheetButton(systemName: "trophy.circle", content: {
                        AchievementView().presentationDetents([.medium])
                    }, isShowingSheet: $isShowingTrophySheet)
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

