//
//  Water.swift
//  drunko
//
//  Created by Fahmi Fahreza on 17/10/23.
//

let water = Drink(
    name: "Water",
    category: .WATER,
    negativeHealth: -2,  // Decreases pet's health when consumed in excess
    positiveHealth: 8,   // Increases pet's health when consumed
    positiveResponse: [
        "Hydration is key! Thanks for the water.",
        "I'm feeling refreshed and hydrated now.",
        "Water is always a good choice for me."
    ],
    negativeResponse: [
        "I'm not really thirsty right now.",
        "I think I've had enough water for now.",
        "This water is a bit too cold for my liking.",
        "I'd rather have something with more flavor."
    ]
)
