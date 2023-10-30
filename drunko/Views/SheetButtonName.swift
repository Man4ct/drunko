//
//  SheetButton.swift
//  drunko
//
//  Created by Fahmi Fahreza on 20/10/23.
//

import SwiftUI

struct SheetButtonName<Content: View>: View {
    
    var systemName: String
    @ViewBuilder var content: () -> Content
    
    @Binding var isShowingSheet: Bool
    
    var body: some View {
        Button {
            isShowingSheet.toggle()
        } label: {
            if(systemName == "cup.and.saucer.fill"){
                Image(systemName: systemName)
                    .resizable()
                    .frame(width: 40, height: 35)
                    .offset(y: 8)
            }else{
                Image(systemName: systemName)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .offset(y: 8)
            }
        }
        .sheet(isPresented: $isShowingSheet, content: {
            content()
        })
    }
    
}
