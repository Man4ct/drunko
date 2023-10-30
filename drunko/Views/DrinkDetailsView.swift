//
//  DrinkDetailsView.swift
//  drunko
//
//  Created by Salvo on 28/10/23.
//

import SwiftUI

struct DrinkDetailsView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var drink: Drink
    
    var body: some View {
        VStack(alignment: .center){
            HStack{
                Image(drink.imageName)
                    .frame(width: 150)
                    .padding(.trailing, 10)
                VStack(alignment: .leading, spacing: 20){
                    Text(drink.name)
                        .font(.title)
                        .padding(.bottom, 1)
                        .foregroundStyle(colorScheme == .dark ? .white : .black)
                    Text("La bevanda alla \nbase della vita")
                        .font(.body)
                }
            }
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
    }
}

#Preview {
    DrinkDetailsView(drink: waterDrink)
}
