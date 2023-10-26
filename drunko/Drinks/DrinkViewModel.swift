//
//  DrinkViewModel.swift
//  drunko
//
//  Created by Salvo on 24/10/23.
//

import Foundation

let waterDrink = Drink(
    name: "Water",
    imageName: "waterImage",
    type: .WATER,
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

let juiceDrink = Drink(
    name: "Orange Juice",
    imageName: "orangeJuiceImage",
    type: .FRUIT_JUICE,
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

let coffeeDrink = Drink(
    name: "Coffee",
    imageName: "drink",
    type: .COFFEE,
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

let milkDrink = Drink(
    name: "Milk",
    imageName: "milkImage",
    type: .MILK,
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

let teaDrink = Drink(
    name: "Green Tea",
    imageName: "greenTeaImage",
    type: .TEA,
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

let vegetableSmoothieDrink = Drink(
    name: "Vegetable Smoothie",
    imageName: "vegetableSmoothieImage",
    type: .VEGETABLE_SMOOTHIE,
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

let softAlcoholDrink = Drink(
    name: "Midori",
    imageName: "midoriImage",
    type: .SOFT_ALCOHOL,
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

let strongAlcoholDrink = Drink(
    name: "Negroni",
    imageName: "negroniImage",
    type: .STRONG_ALCOHOL,
    negativeHealth: -20, // Decreases pet's health when consumed
    positiveHealth: 2,   // Increases pet's health when consumed in moderation
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

let drinkList: [Drink] = [waterDrink, coffeeDrink, teaDrink, milkDrink, juiceDrink, vegetableSmoothieDrink, softAlcoholDrink, strongAlcoholDrink]
