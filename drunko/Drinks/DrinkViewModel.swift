//
//  DrinkViewModel.swift
//  drunko
//
//  Created by Salvo on 24/10/23.
//

import Foundation

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
    ],
    description: "Tasty and full of vitamis!"
)

let coffeeDrink = Drink(
    name: "Coffee",
    imageName: "coffeeImage",
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
    ],
    description: "Max energy but beware of caffeine!"
)

let milkDrink = Drink(
    name: "Milk",
    imageName: "milkImage",
    type: .MILK,
    negativeHealth: -10, // Decreases pet's health when consumed
    positiveHealth: 5,   // Increases pet's health when consumed in moderation
    positiveResponse: [
        "Ah, milk is so comforting and wholesome!",
        "I love the creamy goodness of milk!",
        "Milk is like a warm embrace from a cow!",
        "This milk is so refreshing, thank you!",
        "My bones will be strong with all this calcium!"
    ],
    negativeResponse: [
        "Uh-oh, I'm lactose intolerant, and this milk is trouble!",
        "I've had too much milk, and now I'm feeling a bit queasy.",
        "This milk tastes a little off, maybe it's expired?",
        "I spilled the milk, and now it's a mess!",
        "I'm not a fan of plain milk, got any chocolate syrup?"
    ],
    description: "Plain white milk."

)

let teaDrink = Drink(
    name: "Tea",
    imageName: "teaImage",
    type: .TEA,
    negativeHealth: -10, // Decreases pet's health when consumed
    positiveHealth: 5,   // Increases pet's health when consumed in moderation
    positiveResponse: [
        "Ah, tea is so soothing and delightful!",
        "I feel so relaxed now, thanks for the tea!",
        "The aroma of this tea is incredibly calming.",
        "You really know how to make a perfect cup of tea.",
        "Tea is like a warm hug in a cup."
    ],
    negativeResponse: [
        "Whoa, that's too hot for me! I burnt my tongue.",
        "I think I've had enough caffeine for the day with this tea.",
        "My tea is too bitter, could you add some sugar next time?",
        "I'm not a fan of this flavor. It's too strong for me.",
        "This tea is too weak and tasteless for my liking."
    ],
    description: "A hot cup of tea!"

)

let colaDrink = Drink(
    name: "Cola",
    imageName: "colaImage",
    type: .SUGARY,
    negativeHealth: -10, // Decreases pet's health when consumed
    positiveHealth: 5,   // Increases pet's health when consumed in moderation
    positiveResponse: [
        "Mmm, this cola is so refreshing and bubbly!",
        "I love the fizzy goodness of cola!",
        "Cola is like a party in a can!",
        "This cola is so invigorating, thank you!",
        "I can't resist the sweet taste of cola!"
    ],
    negativeResponse: [
        "Whoa, that's too much sugar for me!",
        "I've had too much caffeine for the day with this cola.",
        "My teeth are tingling, this cola is too sweet!",
        "I'm feeling bloated after all that fizz!",
        "I'm not a fan of cola, it's too carbonated for me."
    ],
    description: "Fresh and bubbly, but sugary."

)

let softAlcoholDrink = Drink(
    name: "Midori",
    imageName: "midoriImage",
    type: .SOFT_ALCOHOL,
    negativeHealth: -15, // Decreases pet's health when consumed
    positiveHealth: 5,   // Increases pet's health when consumed in moderation
    positiveResponse: [
        "Cheers! Midori is a vibrant and delightful drink!",
        "I'm feeling festive with this Midori in hand!",
        "The vibrant green color of Midori is so appealing.",
        "This Midori cocktail is delicious, thank you!",
        "Midori is like a taste of paradise in a glass!"
    ],
    negativeResponse: [
        "Whoa, that's too strong for me!",
        "I've had enough alcohol for the day, I should slow down.",
        "This Midori is too sweet, and it's making me dizzy.",
        "I'm feeling a bit tipsy, maybe I should stop drinking.",
        "I don't like the taste of alcohol, it's too bitter for me."
    ],
    description: "A refreshing alcoholic drink."

)

let strongAlcoholDrink = Drink(
    name: "Negroni",
    imageName: "negroniImage",
    type: .STRONG_ALCOHOL,
    negativeHealth: -20, // Decreases pet's health when consumed
    positiveHealth: 2,   // Increases pet's health when consumed in moderation
    positiveResponse: [
        "Cheers! Negroni is a bold and sophisticated choice!",
        "I'm feeling quite adventurous with this Negroni!",
        "The complex flavors of Negroni are intriguing and delightful.",
        "This Negroni is a masterpiece, thank you!",
        "Negroni is like a journey through a mix of flavors!"
    ],
    negativeResponse: [
        "Whoa, that's too strong for me! It packs a punch.",
        "I've had enough alcohol for the day, I should take it easy.",
        "This Negroni is too bitter for my taste, can I have something else?",
        "I'm feeling a bit woozy, maybe I should stop drinking.",
        "I'm not a fan of the strong taste of Negroni, it's too intense for me."
    ],
    description: "A strong alcoholing drink."

)

let drinkList: [Drink] = [coffeeDrink, teaDrink, milkDrink, juiceDrink, colaDrink, softAlcoholDrink, strongAlcoholDrink]
