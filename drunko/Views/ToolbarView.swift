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
        GeometryReader{ geo in
            NavigationStack {
                ZStack {
                    Color(.backgroundClor)
                        .ignoresSafeArea(edges: [.top])
                    
                    VStack {
                        Circle()
                            .fill(
                                RadialGradient(gradient: Gradient(colors: [.clear, .purple, .clear,.clear, .purple]), center: .bottom, startRadius: 99, endRadius: 100)
                            )
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: geo.size.width-150, height: geo.size.height/4)
//                            .aspectRatio(contentMode: .fit)
                            .foregroundStyle(.yellow)
                            .opacity(0.4)
                            .rotationEffect(.degrees(20.0))
                            .offset(x: geo.size.width * 0.2, y: geo.size.height * 0.02)

                    }
                    
                    
                    Image("alien1")
                        .shadow(radius: 5, y: 10)
                    
                }
                .toolbar {
                    ToolbarItemGroup(placement: .bottomBar) {
                        SheetButton(systemName: "cup.and.saucer.fill", content: {
                            DrinkSheetView() .presentationDetents([.medium])
                        }, isShowingSheet: isShowingCupSheet)
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
}

#Preview {
    ToolbarView()
}


