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
    @AppStorage("counterCoffee") var counterCoffee = DefaultCounters.counterCoffee
    private let health: Double = Double(round(10000 * UserDefaults.standard.double(forKey: "health")) / 10000)
    
    
    var body: some View {
        NavigationStack {
            ZStack{
                RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6030268073, green: 0.6080136299, blue: 0.8535711169, alpha: 1)), Color(#colorLiteral(red: 0.2372646034, green: 0.173969686, blue: 0.3189501762, alpha: 1))]), center: .center, startRadius: /*@START_MENU_TOKEN@*/57/*@END_MENU_TOKEN@*/, endRadius: /*@START_MENU_TOKEN@*/400/*@END_MENU_TOKEN@*/)
                    .ignoresSafeArea()
                
                
                 VStack(spacing: 20) {
                 ProgressView(value: health) {
                 Text("Label")
                 } currentValueLabel: {
                 Text("Current Value Label: \(health)")
                 }
                 Text("Current Value Label: \(health)")
                 .frame(width: 300, height: 20)
                 
                 }
                 
                    .progressViewStyle(.linear)
                    .tint(.pink)
                    .padding()
                    .offset(y:-200)
                 
                
                
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
            .dropDestination(for: Drink.self){ items,location in
                drink = items.first!
                
                if(counterFirstDrink == 0) {
                    counterFirstDrink = 1
                }
                if(counterFiveDrink < 5) {
                    counterFiveDrink += 1
                }
                if(drink.name == "Coffee" && counterCoffee != 1 ) {
                    counterCoffee = 1
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

