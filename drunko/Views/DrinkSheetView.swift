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
            TabView{
                ForEach(drinkList) { drink in
                    VStack{
                        Text(drink.name)
                            .font(.title)
                            .padding(.bottom, 30)
                        Image("waterImage")
                            .padding(.bottom, 30)
                            .draggable(drink)
                    }
                }
            }
            .tabViewStyle(.page)
            .frame(height: 290)
            VStack{
                Text("Drag and drop the drink to give it to the mascott")
                    .padding(.bottom, 5)
                Text("Hold on the drinks to view the details")
            }
            .font(.callout)
            .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    DrinkSheetView()
}
