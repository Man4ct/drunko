//
//  Achievement.swift
//  drunko
//
//  Created by Fahmi Fahreza on 24/10/23.
//

import Foundation

enum TutorialType {
    case COFFEE
    case ONEDRINK
    case FIVEDRINK
    case TUTORIAL
}

struct Achievement: Identifiable {
    let id: UUID = UUID()
    let title: String
    var imageName: String
    let description: String
    let counterEnd: Double
    let type: TutorialType
}
