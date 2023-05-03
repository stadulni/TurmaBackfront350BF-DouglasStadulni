//
//  YutoViewModel.swift
//  testeCVTV
//
//  Created by Douglas Stadulni on 03/05/23.
//

import Foundation

class YutoViewModel {
    
    private var listOfCards: [Cards] = [Cards(cardsImage: "cloak"),
                                        Cards(cardsImage: "cloak"),
                                        Cards(cardsImage: "cloak"),
                                        Cards(cardsImage: "gloves"),
                                        Cards(cardsImage: "gloves"),
                                        Cards(cardsImage: "gloves"),
                                        Cards(cardsImage: "boots"),
                                        Cards(cardsImage: "boots"),
                                        Cards(cardsImage: "boots"),
                                        Cards(cardsImage: "grevas"),
                                        Cards(cardsImage: "grevas"),
                                        Cards(cardsImage: "pklaunch"),
                                        Cards(cardsImage: "lance"),
                                        Cards(cardsImage: "lance"),
                                        Cards(cardsImage: "mst"),
                                        Cards(cardsImage: "mst"),
                                        Cards(cardsImage: "compulsory"),
                                        Cards(cardsImage: "wing"),
                                        Cards(cardsImage: "wing"),
                                        Cards(cardsImage: "icedragon"),
                                        Cards(cardsImage: "icedragon"),
                                        Cards(cardsImage: "requiem"),
                                        Cards(cardsImage: "rebelion"),
                                        Cards(cardsImage: "spider"),
                                        Cards(cardsImage: "sword"),
                                        Cards(cardsImage: "sword")
    
    ]
    
    func getCards(index: Int) -> Cards{
        return listOfCards[index]
    }
    
    var arraySize: Int {
        return listOfCards.count
    }
}
