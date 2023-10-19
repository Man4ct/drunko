//
//  Drink.swift
//  drunko
//
//  Created by Fahmi Fahreza on 17/10/23.
//

import Foundation

enum DrinkCategory {
    case alcohol
    case coffee
    case water
    case juice
}

struct Drink {
    let id: UUID = UUID()
    var name: String
    var category: DrinkCategory
    var negativeHealth: Int
    var positiveHealth: Int
    var positiveResponse: [String]
    var negativeResponse: [String]
}
