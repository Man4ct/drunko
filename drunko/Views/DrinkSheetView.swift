//
//  DrinkSheetView.swift
//  drunko
//
//  Created by Fahmi Fahreza on 19/10/23.
//

import SwiftUI

struct DrinkSheetView: View {
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .darkGray
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.gray
        }

    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: 80, height: 3)
                .foregroundColor(.gray)
                .padding(.top, 45)
            TabView{
                ForEach(drinkList) { drink in
                    VStack{
                        Text(drink.name)
                            .font(.title)
                            .padding(.bottom, 10)
                        if(drink.imageName == "teaImage"){
                            Image(drink.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(maxHeight: 150)
                                .offset(x: 15, y: 20)
                                .draggable(drink)
                        }else if(drink.imageName == "negroniImage"){
                            Image(drink.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 200)
                            .offset(y: 30)
                            .draggable(drink)
                        }else if(drink.imageName == "waterImage"){
                            Image(drink.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 200)
                            .offset(y: 20)
                            .draggable(drink)
                        }
                        else{
                            Image(drink.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(maxHeight: 200)
                                .draggable(drink)
                        }
                    }
                }
            }
            .tabViewStyle(.page)
            .frame(height: 365)
            VStack{
                Text("Drag and drop the drink to give it to the mascott")
                    .padding(.bottom, 5)
                Text("Hold on the drinks to view the details")
            }
            .font(.callout)
            .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
            .padding(.bottom, 25)
        }
    }
}

#Preview {
    DrinkSheetView()
}
