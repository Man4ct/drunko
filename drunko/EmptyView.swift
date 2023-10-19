//
//  EmptyView.swift
//  drunko
//
//  Created by Fahmi Fahreza on 18/10/23.
//

import SwiftUI

struct EmptyView: View {
    var body: some View {
        ZStack {
            Color(.backgroundClor)
                .ignoresSafeArea(edges: [.top])
            Text("This is just to test the tabbar")

        }

    }
}

#Preview {
    EmptyView()
}
