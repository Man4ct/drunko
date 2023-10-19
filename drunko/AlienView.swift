//
//  ContentView.swift
//  drunko
//
//  Created by Fahmi Fahreza on 17/10/23.
//
import SwiftUI

struct AlienView: View {
    
    var body: some View {
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
            Circle()
                .fill(.red.shadow(.drop(color: .black, radius: 100000)))
                .frame(width: 10,height:10)
                  .padding()
            
            Image("alien1")
                .shadow(radius: 5, y: 10)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AlienView()
    }
}
