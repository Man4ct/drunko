//
//  DrinkSheetView.swift
//  drunko
//
//  Created by Fahmi Fahreza on 19/10/23.
//

import SwiftUI

struct DrinkSheetView: View {
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content:  {
            VStack(alignment: .leading, content:                                 {
                Image("drink")
                    .resizable()
                    .clipShape(.rect)
                    .aspectRatio(contentMode: .fit)
                Image("drink")
                    .resizable()
                    .clipShape(.rect)
                    .aspectRatio(contentMode: .fit)
                
                Image("drink")
                    .resizable()
                    .clipShape(.rect)
                    .aspectRatio(contentMode: .fit)
                
            })
            VStack(alignment: .center, content:                                 {
                Image("drink")
                    .resizable()
                    .clipShape(.rect)
                    .aspectRatio(contentMode: .fit)
                Image("drink")
                    .resizable()
                    .clipShape(.rect)
                    .aspectRatio(contentMode: .fit)
                
                Image("drink")
                    .resizable()
                    .clipShape(.rect)
                    .aspectRatio(contentMode: .fit)
                
            })
            VStack(alignment: .trailing, content:                                 {
                Image("drink")
                    .resizable()
                    .clipShape(.rect)
                    .aspectRatio(contentMode: .fit)
                Image("drink")
                    .resizable()
                    .clipShape(.rect)
                    .aspectRatio(contentMode: .fit)
                
                Image("drink")
                    .resizable()
                    .clipShape(.rect)
                    .aspectRatio(contentMode: .fit)
                
            })
            
            
        } )
    }
}

#Preview {
    DrinkSheetView()
}
