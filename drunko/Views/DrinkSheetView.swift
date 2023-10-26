//
//  DrinkSheetView.swift
//  drunko
//
//  Created by Fahmi Fahreza on 19/10/23.
//

import SwiftUI

struct DrinkSheetView: View {

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
                        Image("waterImage")
                            .resizable()
                            .frame(width: 80, height: 200)
                            .draggable(drink)
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
