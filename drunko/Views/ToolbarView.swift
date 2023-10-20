//
//  ToolbarView.swift
//  drunko
//
//  Created by Fahmi Fahreza on 19/10/23.
//


// MARK
// We have not implement this, i don't know how, -- Fahmi
import SwiftUI

struct ToolbarView: View {
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
                        DrinkSheetView()                        .presentationDetents([.height(350)])
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

#Preview {
    ToolbarView()
}
