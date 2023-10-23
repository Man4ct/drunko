//
//  Drink.swift
//  drunko
//
//  Created by Fahmi Fahreza on 17/10/23.
//

import Foundation

enum Drinks: Int, CaseIterable, Identifiable {
    case SOFT_ALCOHOL
    case STRONG_ALCOHOL
    case COFFEE
    case WATER
    case FRUIT_JUICE
    case VEGETABLE_SMOOTHIE
    case MILK
    case TEA
    
    var id: Int {
        return self.rawValue
    }
    
    var name: String {
        switch self {
        case .SOFT_ALCOHOL:
            return "Soft Alcohol"
        case .STRONG_ALCOHOL:
            return "Strong Alcohol"
        case .COFFEE:
            return "Coffee"
        case .WATER:
            return "Water"
        case .FRUIT_JUICE:
            return "Fruit Juice"
        case .VEGETABLE_SMOOTHIE:
            return "Vegetable Smoothie"
        case .MILK:
            return "Milk"
        case .TEA:
            return "Tea"
        }
    }
    
    var imageName: String{
        switch self {
        case .SOFT_ALCOHOL:
            return "softAlcoholImage"
        case .STRONG_ALCOHOL:
            return "strongAlcoholImage"
        case .COFFEE:
            return "coffeeImage"
        case .WATER:
            return "waterImage"
        case .FRUIT_JUICE:
            return "fruitJuiceImage"
        case .VEGETABLE_SMOOTHIE:
            return "vegetableSmoothieImage"
        case .MILK:
            return "milkImage"
        case .TEA:
            return "teaImage"
        }
    }
    
    var negativeHealth: Int{
        switch self {
        case .SOFT_ALCOHOL:
            return -7
        case .STRONG_ALCOHOL:
            return -10
        case .COFFEE:
            return -4
        case .WATER:
            return 0
        case .FRUIT_JUICE:
            return -3
        case .VEGETABLE_SMOOTHIE:
            return -2
        case .MILK:
            return -2
        case .TEA:
            return -4
        }
    }
    
    var positiveHealth: Int{
        switch self {
        case .SOFT_ALCOHOL:
            return 2
        case .STRONG_ALCOHOL:
            return 1
        case .COFFEE:
            return 3
        case .WATER:
            return 7
        case .FRUIT_JUICE:
            return 4
        case .VEGETABLE_SMOOTHIE:
            return 5
        case .MILK:
            return 4
        case .TEA:
            return 3
        }
    }
    
    var positiveResponse: [String]{
        switch self {
        case .SOFT_ALCOHOL:
            return ["",""]
        case .STRONG_ALCOHOL:
            return [
                "Cheers! I'm feeling relaxed now.",
                "A little sip won't hurt. Thanks for the drink!",
                "This drink has a nice kick to it. Cheers!",
                "I'm enjoying the flavor of this alcohol."
            ]
        case .COFFEE:
            return [
                "Mmm, this coffee is just what I needed!",
                "I feel so energized now, thanks for the coffee!",
                "Ah, the aroma of coffee is so inviting.",
                "You really know how to make a great cup of coffee.",
                "Coffee is like a warm hug in a cup."
            ]
        case .WATER:
            return [
                "Hydration is key! Thanks for the water.",
                "I'm feeling refreshed and hydrated now.",
                "Water is always a good choice for me."
            ]
        case .FRUIT_JUICE:
            return [
                "This juice is so refreshing! Thanks!",
                "I love the fruity goodness of this juice.",
                "I feel healthier with every sip of this juice.",
                "Juice is always a great choice!"
            ]
        case .VEGETABLE_SMOOTHIE:
            return ["",""]
        case .MILK:
            return [
                "Yummy! I love fresh milk!",
                "Milk, my secret superpower for growing big and tall!",
                "Milk, a magical potion that makes my bones super strong!",
                "Water is always a good choice for me."
            ]
        case .TEA:
            return [
                "This tea is like a warm hug from my parents",
                "Hooray for tea! I can stay hydrated and feel warm at the same time!",
                "I feel better after drinking this hot tea, like magic!",
                "After one cup of warm tea I feel so relaxed."
            ]
        }
        
        var negativeResponse: [String]{
            switch self {
            case .SOFT_ALCOHOL:
                return ["",""]
            case .STRONG_ALCOHOL:
                return [
                    "I'm feeling dizzy, that was too much alcohol.",
                    "I think I've had enough alcohol for now.",
                    "I'm not a fan of this alcohol's taste.",
                    "I'm not in the mood for alcohol today."
                ]
            case .COFFEE:
                return [
                    "Whoa, that's too much caffeine for me!",
                    "I think I've had enough caffeine for the day.",
                    "My heart is racing, this coffee was too strong!",
                    "I'm feeling jittery, maybe less coffee next time?",
                    "This coffee is way too bitter for my taste."
                ]
            case .WATER:
                return [
                    "I'm not really thirsty right now.",
                    "I think I've had enough water for now.",
                    "This water is a bit too cold for my liking.",
                    "I'd rather have something with more flavor."
                ]
            case .FRUIT_JUICE:
                return [
                    "I'm feeling dizzy, that was too much alcohol.",
                    "I think I've had enough alcohol for now.",
                    "I'm not a fan of this alcohol's taste.",
                    "I'm not in the mood for alcohol today."
                ]
            case .VEGETABLE_SMOOTHIE:
                return ["",""]
            case .MILK:
                return [
                    "This milk is hiding in my cookies and turning them all mushy",
                    "This milk tastes strange. Is it rotten?",
                    "This milk is all watery...",
                    "This is not easy to digest"
                ]
            case .TEA:
                return [
                    "Ouch, this tea is slightly addictive...",
                    "I am drinking too much tea, now it tastes like puddle water",
                    "Maybe too much tea is not relaxing me, my hands are sweaty",
                    "My stomach is hurting, please stop giving me tea"
                ]
            }
        }
    }
}
