//
//  SheetButton.swift
//  drunko
//
//  Created by Fahmi Fahreza on 20/10/23.
//

import SwiftUI

struct SheetButton<Content: View>: View {
    
    var systemName: String
    @ViewBuilder var content: () -> Content
    
    @State var isShowingSheet: Bool = false
    
    var body: some View {
        Button {
            isShowingSheet.toggle()
        } label: {
            Image(systemName: systemName)
        }
        .sheet(isPresented: $isShowingSheet, content: {
            content()
        })
    }
    
}

#Preview {
    SheetButton(systemName: "cup.and.saucer.fill", content: {
        DrinkSheetView() .presentationDetents([.medium])
    })
}
