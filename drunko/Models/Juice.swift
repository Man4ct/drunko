//
//  Juice.swift
//  drunko
//
//  Created by Fahmi Fahreza on 17/10/23.
//

let juice = Drink(
    name: "Juice",
    category: .juice,
    negativeHealth: -5,  // Decreases pet's health when consumed
    positiveHealth: 10,   // Increases pet's health when consumed
    positiveResponse: [
        "This juice is so refreshing! Thanks!",
        "I love the fruity goodness of this juice.",
        "I feel healthier with every sip of this juice.",
        "Juice is always a great choice!"
    ],
    negativeResponse: [
        "Hmm, I expected something different from this juice.",
        "This juice is a bit too sour for my taste.",
        "I prefer a different flavor of juice.",
        "I think I'd rather have something else."
    ]
)
