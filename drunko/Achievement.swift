//
//  Achievement.swift
//  drunko
//
//  Created by Fahmi Fahreza on 24/10/23.
//

import Foundation

struct Achievement: Identifiable {
    let id: UUID = UUID()
    let title: String
    var imageName: String
    let description: String
    var counter: Double = 0.0
    let counterEnd: Double
}
