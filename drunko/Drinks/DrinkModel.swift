//
//  Drinks.swift
//  drunko
//
//  Created by Salvo on 24/10/23.
//

import Foundation
import SwiftUI
import UniformTypeIdentifiers

enum DrinkType: Codable{
    case SOFT_ALCOHOL
    case STRONG_ALCOHOL
    case COFFEE
    case WATER
    case FRUIT_JUICE
    case VEGETABLE_SMOOTHIE
    case MILK
    case TEA
}

struct Drink: Identifiable, Codable, Hashable, Transferable{

    var id: UUID = UUID()
    var name: String
    var imageName: String
    var type: DrinkType
    var negativeHealth: Int
    var positiveHealth: Int
    var positiveResponse: [String]
    var negativeResponse: [String]

    static var transferRepresentation: some TransferRepresentation {
        CodableRepresentation(contentType: .drink)
    }
    
}

extension UTType{
    static let drink = UTType(exportedAs: "fahmi-ios-devs.drunkots.drink")
}
