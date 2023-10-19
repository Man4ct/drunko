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
    //                        .rotationEffect(.degrees(30.0))
                }
                Circle()
                    .fill(.red.shadow(.drop(color: .black, radius: 100000)))
                    .frame(width: 10,height:10)
                      .padding()
                
                Image("alien1")
                    .shadow(radius: 5, y: 10)
                
            }
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Button(role:.cancel ,action: {
                        isShowingCupSheet.toggle()
                    }, label: {
                        Label("Cup", systemImage: "cup.and.saucer.fill")
                    })
                    .sheet(isPresented: $isShowingCupSheet, content: {
                        Text("This is half modal sheet")
                            .presentationDetents([.medium])
                    })
Spacer()
                    Button(role:.cancel ,action: {
                        isShowingTrophySheet.toggle()
                    }, label: {
                        Label("Cup", systemImage: "trophy.circle")

                    })
                    .sheet(isPresented: $isShowingTrophySheet, content: {
                        Text("This is half modal sheet for trophy")
                            .presentationDetents([.medium])
                    })
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
