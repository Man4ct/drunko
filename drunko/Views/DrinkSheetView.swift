//
//  DrinkSheetView.swift
//  drunko
//
//  Created by Fahmi Fahreza on 19/10/23.
//

import SwiftUI

struct DrinkSheetView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var isShowingDrinkSheet: Bool = false
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .darkGray
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.gray
        }
    
    @State var imgWidth: Int = 150
    @State var imgHeight: Int = 150

    var body: some View {
        VStack{
            TabView{
                ForEach(drinkList) { drink in
                    VStack(alignment: .center){
                        HStack{
                            if(drink.imageName == "coffeeImage"){
                                Image(drink.imageName)
                                    .resizable()
                                    .frame(width: 125, height: 125)
                                    .padding(.trailing, 20.0)
                                    .shadow(radius: 2)
                                    .draggable(drink)
                            }else if(drink.imageName == "teaImage"){
                                Image(drink.imageName)
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .padding(.trailing, 20)
                                    .shadow(radius: 2)
                                    .draggable(drink)
                            }else if(drink.imageName == "milkImage"){
                                Image(drink.imageName)
                                    .resizable()
                                    .frame(width: 90, height: 140)
                                    .padding(.trailing, 20)
                                    .shadow(radius: 2)
                                    .draggable(drink)
                            }else if(drink.imageName == "orangeJuiceImage"){
                                Image(drink.imageName)
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                    .padding(.trailing, 10)
                                    .shadow(radius: 2)
                                    .draggable(drink)
                            }else if(drink.imageName == "colaImage"){
                                Image(drink.imageName)
                                    .resizable()
                                    .frame(width: 90, height: 150)
                                    .padding(.trailing, 20)
                                    .shadow(radius: 2)
                                    .draggable(drink)
                            }else if(drink.imageName == "midoriImage"){
                                Image(drink.imageName)
                                    .resizable()
                                    .frame(width: 100, height: 160)
                                    .padding(.trailing, 15)
                                    .shadow(radius: 2)
                                    .draggable(drink)
                            }else if(drink.imageName == "negroniImage"){
                    
                                
                                
                        Image(drink.imageName)
                                    .resizable()
                                    .frame(width: 130, height: 150)
                                    .padding(.trailing, 10)
                                    .shadow(radius: 2)
                                    .draggable(drink)
                            }else{
                                Image(drink.imageName)
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .padding(.trailing, 20)
                                    .shadow(radius: 2)
                                    .draggable(drink)
                            }
                            VStack(alignment: .leading, spacing: 20){
                                Text(drink.name)
                                    .font(.title)
                                    .padding(.bottom, 1)
                                    .foregroundStyle(colorScheme == .dark ? .white : .black)
                                Text(drink.description)

                                    .font(.body)
                            }
                        }
                        .frame(width: 300, height: 200)
                        HStack{
                            Text("Health +\(drink.positiveHealth)")
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 30)
                                .background(.green)
                                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                            Text("Health \(drink.negativeHealth)")
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 30)
                                .background(.red)
                                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                        }
                    }
                    .frame(maxWidth:350)
                    .offset(y:-20)
                }
            }
            .tabViewStyle(.page)
            .frame(height: 300)
            VStack{
                Text("Drag and drop the drink to give it to Henry")
            }
            .font(.callout)
            .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
            .padding(.bottom, 25)
        }
        .frame(height: 350)
    }
}

#Preview {
    DrinkSheetView()
}
