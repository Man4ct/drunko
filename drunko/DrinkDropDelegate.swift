//
//  DrinkDropDelegate.swift
//  drunko
//
//  Created by Salvo on 24/10/23.
//

import Foundation
import SwiftUI

struct DrinkDropDelegate: DropDelegate {
    @Binding var drink: Drinks?

    func performDrop(info: DropInfo) -> Bool {
        // Esegui le azioni necessarie quando un drink viene rilasciato sul mascotte
        if let droppedDrink = drink {
            // Esegui azioni con il drink trascinato (puoi aggiungerlo al mascotte, aggiornare lo stato, ecc.)
            // ... fai quello che serve con il drink

            // Resetta il drink trascinato
            drink = nil
        }

        return true
    }
}
