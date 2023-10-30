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
    
    @State var health: Double = UserDefaults.standard.double(forKey: "health")
    @State var level: Int = UserDefaults.standard.integer(forKey: "level")
    
    
    var body: some View {
        NavigationStack {
            
            
            ZStack{

                AlienBackgroundView()
                
                VStack(alignment: .leading) {
                    Text("Level")
                        .offset(x:15, y: 20)
                        .font(.title)
                        .foregroundStyle(Color(red: 0.801, green: 0.841, blue: 0.878))
                    HStack{
                        Image(systemName: "heart.circle.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .foregroundColor(Color(hue: 0.148, saturation: 0.437, brightness: 0.624))
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/.stroke(lineWidth: 30))
                            .background(Color(hue: 0.148, saturation: 0.418, brightness: 0.471))
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .shadow(radius: 10)
                        ZStack{
                            RoundedRectangle(cornerRadius: 5.0)
                                .frame(width: 250,height: 24)
                                .foregroundStyle(.gray)
                                .offset(x:-11.3)
                            ProgressView(value: health, total: 50)
                                .frame(width: 250, height: 50)
                                .scaleEffect(CGSize(width: 1, height: 6))
                                .tint(Color(hue: 0.148, saturation: 0.437, brightness: 0.624))
                                .offset(x:-12)
                                .shadow(radius: 10, x: 12)
                            Text(String(format: "%.0f", health) + "/50")
                                .bold()
                                .offset(x:-20)
                                .foregroundStyle(Color(red: 0.801, green: 0.841, blue: 0.878))
                            Text("\(level)")
                                .font(.largeTitle)
                                .offset(x:-183)
                                .bold()
                                .foregroundStyle(Color(red: 0.801, green: 0.841, blue: 0.878))
                        }
                        
                    }
                    
                }
                .progressViewStyle(.linear)
                .tint(.pink)
                .frame(width: 300)
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
                

                Rectangle()
                    .frame(height: 100)
                    .opacity(0.3)
                    .offset(y: 400)
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
                
                if(health + Double(drink.positiveHealth) >= 50){
                    UserDefaults.standard.setValue(0.0, forKey: "health")
                    UserDefaults.standard.setValue(level+1, forKey: "level")
                }else{
                    UserDefaults.standard.setValue(health + Double(drink.positiveHealth), forKey: "health")
                }
                
                health = UserDefaults.standard.double(forKey: "health")
                level = UserDefaults.standard.integer(forKey: "level")
                
                isShowingCupSheet = false
                return true
            }
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Spacer()
                    SheetButton(systemName: "cup.and.saucer.fill", content: {
                        DrinkSheetView()
                            .presentationDetents([.height(350)])
                            .presentationBackgroundInteraction(.enabled(upThrough: .height(350)))
                    }, isShowingSheet: $isShowingCupSheet)
                    .foregroundColor(.white)
                    Spacer()
                    Spacer()
                    Spacer()
                    SheetButton(systemName: "trophy.circle", content: {
                        AchievementView().presentationDetents([.medium])
                    }, isShowingSheet: $isShowingTrophySheet)
                    .foregroundColor(.white)
                    .frame(height: 200)
                    Spacer()
                }
            }
            
        }//end of navigation stack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AlienView()
    }
}

