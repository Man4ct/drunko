//
//  ObservableObject.swift
//  drunko
//
//  Created by Salvo on 24/10/23.
//

import Foundation
import SwiftUI

class AppState: ObservableObject {
    @Published var draggedDrink: Drinks?
}
