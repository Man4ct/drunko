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
                
                Image("alien1")
                    .shadow(radius: 5, y: 10)
                
            }
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    createButton(role: .cancel, toggle: $isShowingCupSheet, label: "Drinks", imageName: "cup.and.saucer.fill")
                        .sheet(isPresented: $isShowingCupSheet, content: {
                            DrinkSheetView()  // This is from another view
                                .presentationDetents([.medium])
                        })
                    Spacer()
                    createButton(role: .cancel, toggle: $isShowingTrophySheet, label: "Achievements", imageName: "trophy.circle")
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


// Function to create Button
func createButton(role: ButtonRole, toggle: Binding<Bool>, label: String, imageName: String ) ->  Button<Label<Text, Image>> {
    let buttonCreated = Button(role:role ,action: {
        toggle.wrappedValue.toggle()
    }, label: {
        Label(label, systemImage: imageName)
    })
    return buttonCreated
}
