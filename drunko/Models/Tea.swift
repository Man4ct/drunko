//
//  IcedTea.swift
//  drunko
//
//  Created by Veronica Natale on 19/10/23.
//

import Foundation

let Tea = Drink(
    name: "Tea",
    category: .TEA,
    negativeHealth: -8,  // Decreases pet's health when consumed in excess
    positiveHealth: 15,   // Increases pet's health when consumed
    positiveResponse: [
        "This tea is like a warm hug from my parents",
        "Hooray for tea! I can stay hydrated and feel warm at the same time!",
        "I feel better after drinking this hot tea, like magic!",
        "After one cup of warm tea I feel so relaxed."
    ],
    negativeResponse: [
        "Ouch, this tea is slightly addictive...",
        "I am drinking too much tea, now it tastes like puddle water",
        "Maybe too much tea is not relaxing me, my hands are sweaty",
        "My stomach is hurting, please stop giving me tea"
    ]
)
