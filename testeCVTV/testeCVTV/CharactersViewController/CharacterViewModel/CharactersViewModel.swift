//
//  CharactersViewModel.swift
//  testeCVTV
//
//  Created by Douglas Stadulni on 15/05/23.
//

import Foundation

class CharactersViewModel {
    
    private var listOfCharacters: [Characters] = [Characters(charactersImage: "yugi"),
                                                  Characters(charactersImage: "kaiba"),
                                                  Characters(charactersImage: "joey"),
                                                  Characters(charactersImage: "tea"),
                                                  Characters(charactersImage: "mai"),
                                                  Characters(charactersImage: "marik"),
                                                  Characters(charactersImage: "ishizu"),
                                                  Characters(charactersImage: "bakura"),
                                                  Characters(charactersImage: "pegasus")
    ]
    
    func getCharacter(index: Int) -> Characters{
        return listOfCharacters[index]
    }
    
    var arraySize: Int{
        return listOfCharacters.count
    }
    
    
    
    private var descriptionOfCharater: [Characters] = [
                        Characters(charactersName: "Yami", charactersSurname: "Yugi", charactersImage: "yamiyugi", charactersDescription: "When Yugi Muto solved the Millennium Puzzle, he was infused with the ancient spirit of Yami Yugi. Yami Yugi is ready to face any challenge in order to regain his lost memories. An expert Duelist wielding unmatched skills and cards, Yami Yugi's most trusted monster is Dark Magician."),
                        Characters(charactersName: "Seto", charactersSurname: "Kaiba", charactersImage: "setokaiba", charactersDescription: "Yugi`s eternal rival and president of KaibaCorp—the world's leading gaming conglomerate. Extremely proud and confident, Kaiba will stop at nothing to become the greatest Duelist in history. Kaiba's signature monster is the legendary and ferocious rare card Blue-Eyes White Dragon."),
                        Characters(charactersName: "Joey", charactersSurname: "Wheeler", charactersImage: "joeywheeler", charactersDescription: "The Duelist Jy Wheeler isn't afraid to face danger to help his friends, especially his best bud Yugi. Always ready to take a chance, his cards often rely on luck. However, his go-to monster is the reliable Red-Eyes B. Dragon."),
                        Characters(charactersName: "Tea", charactersSurname: "Gardner", charactersImage: "teagardner", charactersDescription: "Tea is Yugi's childhood friend who dreams of becoming a professional dancer. Though she won't call herself a Duelist, her bravery won't allow her to back down from any Duel."),
                        Characters(charactersName: "Mai", charactersSurname: "Valentine", charactersImage: "maivalentine", charactersDescription: "The beautiful and bold Mai Valentine has traveled the world, taking down all challengers along the way. Though she may seem bossy and tough, she also has a softer side, like an older sister that you can count on. (But don't call her old!). When Dueling, her Harpie Lady dazzles her opponents into defeat."),
                        Characters(charactersName: "Yami", charactersSurname: "Marik", charactersImage: "marikishtar", charactersDescription: "Yami Marik is Marik Ishtar's dark side created from the suffering he endured as a Gravekeeper. Cruel and vicious, he enjoys watching his opponents suffer. His appetite for destruction is incomprehensible. His Lava Golem can be summoned to the opponent's side of the field where it slowly puts the stranglehold on his foe."),
                        Characters(charactersName: "Ishizu", charactersSurname: "Ishtar", charactersImage: "ishizuishtar", charactersDescription: "Ishizu Ishtar is a descendant of the Gravekeeper family who were the guardians of the Millennium Items. She is determined to rescue her younger brother Marik from the darkness that has overtaken him. The power of her Millennium Necklace allows her to see the future."),
                        Characters(charactersName: "Yami", charactersSurname: "Bakura", charactersImage: "yamibakura", charactersDescription: "When Yugi's classmate Bakura was possessed by the evil spirit inside the Millennium Ring, he transformed into Yami Bakura. He is merciless and will stop at nothing to achieve his goal. Yami Bakura's Occult Deck focuses on Fiend and Zombie-Type cards."),
                        Characters(charactersName: "Maximillion", charactersSurname: "Pegasus", charactersImage: "maximillionpegasus", charactersDescription: "Maximillion Pegasus is the president of Industrial Illusions and the genius game designer who created Duel Monsters. He uses the power of his Millennium Eye to read his opponents' minds and see the cards in their hand. His Deck focuses on Toon Monsters to toy with his opponents. But when he gets serious, his card Relinquished has an effect that enables it to absorb his opponents' monsters.")
    
    ]
    
    func getDescriptionCharacter(index: Int) -> Characters{
       return descriptionOfCharater[index]
    }
    
    var listDescriptionSize: Int{
        return descriptionOfCharater.count
    }
    
}
