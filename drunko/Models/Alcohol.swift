//
//  Alcohol.swift
//  drunko
//
//  Created by Fahmi Fahreza on 17/10/23.
//

let alcohol = Drink(
    name: "Alcohol",
    category: .ALCOHOL,
    negativeHealth: -15, // Decreases pet's health when consumed
    positiveHealth: 5,   // Increases pet's health when consumed in moderation
    positiveResponse: [
        "Cheers! I'm feeling relaxed now.",
        "A little sip won't hurt. Thanks for the drink!",
        "This drink has a nice kick to it. Cheers!",
        "I'm enjoying the flavor of this alcohol."
    ],
    negativeResponse: [
        "I'm feeling dizzy, that was too much alcohol.",
        "I think I've had enough alcohol for now.",
        "I'm not a fan of this alcohol's taste.",
        "I'm not in the mood for alcohol today."
    ]
)
