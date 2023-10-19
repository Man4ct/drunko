//
//  Milk.swift
//  drunko
//
//  Created by Veronica Natale on 19/10/23.
//

import Foundation

let milk = Drink(
    name: "Milk",
    category: .MILK,
    negativeHealth: -5,  // Decreases pet's health when consumed in excess
    positiveHealth: 7,   // Increases pet's health when consumed
    positiveResponse: [
        "Yummy! I love fresh milk!",
        "Milk, my secret superpower for growing big and tall!",
        "Milk, a magical potion that makes my bones super strong!",
        "Water is always a good choice for me."
    ],
    negativeResponse: [
        "This milk is hiding in my cookies and turning them all mushy",
        "This milk tastes strange. Is it rotten?",
        "This milk is all watery...",
        "This is not easy to digest"
    ]
)
