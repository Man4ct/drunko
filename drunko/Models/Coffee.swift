//
//  Coffee.swift
//  drunko
//
//  Created by Fahmi Fahreza on 17/10/23.
//


// Define instances of the Drink entity with the DrinkCategory enum
let coffee = Drink(
    name: "Coffee",
    category: .COFFEE,
    negativeHealth: -10, // Decreases pet's health when consumed
    positiveHealth: 5,   // Increases pet's health when consumed in moderation
    positiveResponse: [
        "Mmm, this coffee is just what I needed!",
        "I feel so energized now, thanks for the coffee!",
        "Ah, the aroma of coffee is so inviting.",
        "You really know how to make a great cup of coffee.",
        "Coffee is like a warm hug in a cup."
    ],
    negativeResponse: [
        "Whoa, that's too much caffeine for me!",
        "I think I've had enough caffeine for the day.",
        "My heart is racing, this coffee was too strong!",
        "I'm feeling jittery, maybe less coffee next time?",
        "This coffee is way too bitter for my taste."
    ]
)


// Define instances for juice and water as well with appropriate health values

